#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include "bus.h"
#include "thread_worker.h"

typedef enum
{
    INIT,
    READY,
    ACTIVE,
    EXIT
} worker_state_t;

typedef struct
{
    pthread_t id;
    pthread_mutex_t lock;
    void *bus;
    size_t idle_times;
    worker_state_t state;
    void *(*run)(void*);
} thread_worker_ctx_t;

static void *thread_worker_run(void *ctx)
{
    thread_worker_ctx_t *fctx = ctx;
    while (fctx->state == ACTIVE)
    {
        job_t *job = bus_recv(fctx->bus);
        if (job != NULL)
        {
            job->run(job->ctx);
            fctx->idle_times = 0;
        }
        else
        {
            usleep(10 * fctx->idle_times);
            fctx->idle_times++;
        }
    }
    return NULL;
}

void *thread_worker_init(void *bus)
{
    thread_worker_ctx_t *ctx = calloc(1, sizeof(thread_worker_ctx_t));
    ctx->bus = bus;
    ctx->state = INIT;
    pthread_mutex_init(&ctx->lock, NULL);
    ctx->state = READY;
    return ctx;
}

void thread_worker_start(void *ctx)
{
    pthread_attr_t attr;
    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_DETACHED);
    
    thread_worker_ctx_t *fctx = ctx;
    fctx->state = ACTIVE;
    pthread_create(&fctx->id, &attr, thread_worker_run, fctx);
    pthread_attr_destroy (&attr);
}

void thread_worker_destroy(void **ctx)
{
    if (ctx == NULL)
    {
        return;
    }
    
    thread_worker_ctx_t *fctx = *ctx;
    pthread_mutex_destroy(&fctx->lock);
    free(fctx);
    *ctx = NULL;
}

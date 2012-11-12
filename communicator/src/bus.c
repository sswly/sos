#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include "fix_queue.h"

typedef struct
{
    void *buf;
    size_t len;
} buffer_t;

typedef struct 
{
    void *buf_queue;
} bus_ctx_t;

void *bus_init(size_t capacity)
{
    void *buf_queue = fix_queue_init(capacity);
    if (buf_queue == NULL)
    {
        return NULL;
    }

    bus_ctx_t *ctx = calloc(1, sizeof(bus_ctx_t));
    ctx->buf_queue = buf_queue;
    return ctx;
}

size_t bus_send(void *ctx, buffer_t *buf)
{
    bus_ctx_t *fctx = ctx;
    if (fix_queue_push(fctx->buf_queue, buf) == 0)
    {
        return buf->len;
    }
    
    return 0;
}

buffer_t *bus_recv(void *ctx)
{
    bus_ctx_t *fctx = ctx;
    return fix_queue_pop(fctx->buf_queue);
}

void bus_destroy(void **ctx)
{
    if (ctx == NULL)
    {
        return;
    }
    
    bus_ctx_t *fctx = *ctx;
    fix_queue_destroy(&fctx->buf_queue);
    free(fctx);
    *ctx = NULL;
}
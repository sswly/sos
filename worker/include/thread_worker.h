#ifndef __THREAD_WORKER_H__
#define __THREAD_WORKER_H__

typedef struct
{
    void *(*run)(void*);
    void *ctx;
} job_t;

void *thread_worker_init(void *bus);
void thread_worker_start(void *ctx);
void thread_worker_destroy(void **ctx);

#endif

#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

typedef struct
{
    void *(*run)(void *);
    size_t interval;
    size_t tick;
    size_t loop_time;
} timer_task_t;

typedef struct
{
    fix_queue_t *tasks; 
    void *bus;
} timer_run_ctx_t;

typedef struct
{
    fix_queue_t *tasks; 
    timer_task_t task;
} timer_add_ctx_t;

void *timer_init(void *bus)
{
    timer_ctx_t *ctx = calloc(1, sizeof(timer_ctx_t));
    ctx->tasks = fix_queue_init(1024);
    ctx->bus = bus;
}

void *timer_add_task(void *ctx)
{
    
}

void timer_schedule(void *ctx, 
    void *(*run)(void *), size_t interval, size_t loop_time)
{
    plan_task_t *task = calloc(1, sizeof(plan_task_t));
    task->run = run;
    task->interval = interval;
    task->tick = interval;
    task->loop_time = loop_time;
    
    timer_ctx_t *fctx = ctx;
    bus_send(fctx->bus, &job);
}

void *timer_run(void *ctx)
{
    
}

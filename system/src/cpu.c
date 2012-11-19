#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

typedef struct
{
    char name[32];
    size_t user;
    size_t nice;
    size_t system;
    size_t idle;
} cpu_t;

typedef struct
{
    cpu_t cpus[2];
    int first;
    int second;
} cpu_ctx_t;

static void system_cpu_update(cpu_t *cpu)
{
    char buf[1024];
    FILE *fd = fopen("/proc/stat", "r");
    fgets(buf, sizeof(buf), fd);
    sscanf(buf, "%s %u %u %u %u", cpu->name,
           &cpu->user, &cpu->nice, &cpu->system, &cpu->idle);;
    fclose(fd);
}

void *system_cpu_init()
{
    cpu_ctx_t *ctx = calloc(1, sizeof(cpu_ctx_t));
    ctx->second = 1;
    system_cpu_update(&ctx->cpus[1]);
    return ctx;
}

static size_t system_cpu_total(cpu_t *first, cpu_t *second)
{
    return (second->user + second->nice + second->system + second->idle)
        - (first->user + first->nice + first->system + first->idle);
}

void *system_cpu_idle(void *ctx)
{
    cpu_ctx_t *fctx = ctx;
    
    int tmp = fctx->first;
    fctx->first = fctx->second;
    fctx->second = tmp;
    
    system_cpu_update(&fctx->cpus[fctx->second]);
    int total = 
        system_cpu_total(&fctx->cpus[fctx->first], &fctx->cpus[fctx->second]);
    
    if (total != 0)
    {
        float idle = (fctx->cpus[fctx->second].idle - fctx->cpus[fctx->first].idle)
            * 100 / total;
        printf("Idle: %0.2f%%\n", idle);
    }
    return NULL;
}

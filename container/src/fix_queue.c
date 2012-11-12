#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

typedef struct 
{
    size_t head;
    size_t tail;
    size_t capa;
    void **nodes;
} fix_queue_ctx_t;

size_t fix_queue_size(void *ctx)
{
    if (ctx == NULL)
    {
        return 0;
    }
    
    fix_queue_ctx_t *fctx = ctx;
    int dis = fctx->tail - fctx->head;
    return dis >= 0 ? dis : dis + fctx->capa;
}

int fix_queue_is_full(void *ctx)
{
    fix_queue_ctx_t *fctx = ctx;
    return (fix_queue_size(ctx) + 1) == fctx->capa ? 1 : 0;
}

int fix_queue_is_empty(void *ctx)
{
    return fix_queue_size(ctx) == 0 ? 1 : 0;
}

void *fix_queue_init(size_t capacity)
{
    if (capacity == 0)
    {
        return NULL;
    }
    
    capacity++;//to avoid the ambiguity when head equal to tail
    
    fix_queue_ctx_t *ctx = calloc(1, sizeof(fix_queue_ctx_t));
    ctx->nodes = calloc(capacity, sizeof(void*));
    ctx->capa = capacity;
    return ctx;
}

int fix_queue_push(void *ctx, void *node)
{
    if (ctx == NULL || fix_queue_is_full(ctx) == 1)
    {
//        printf("Cannot insert data to queue\n");
        return -1;
    }
    
    fix_queue_ctx_t *fctx = ctx;
    //turn back
    fctx->nodes[fctx->tail] = node;
    fctx->tail++;
    if (fctx->tail == fctx->capa)
    {
        fctx->tail = 0;
    }

    return 0;
}

/**
 * @brief remove a node from the queue
 * @param ctx context
 * @return  
 *  - not NULL: success
 *  - NULL: fail
 */
void *fix_queue_pop(void *ctx)
{
    if (ctx == NULL || fix_queue_is_empty(ctx) == 1)
    {
        return NULL;
    }
    
    fix_queue_ctx_t *fctx = ctx;
//    fctx->head = fctx->head > fctx->capa ? 0 : fctx->head;
    void *node = fctx->nodes[fctx->head];
    fctx->head++;
    if (fctx->head == fctx->capa)
    {
        fctx->head = 0;
    }
    
    return node;
}

void fix_queue_destroy(void **ctx)
{
    if (ctx == NULL)
    {
        return;
    }
    
    fix_queue_ctx_t *fctx = *ctx;
    free(fctx->nodes);
    fctx->nodes = NULL;
    free(fctx);
    *ctx = NULL;
}

void fix_queue_debug(void *ctx)
{
    fix_queue_ctx_t *fctx = ctx;
    printf("head: %u, tail: %u, capacity: %u\n", 
        fctx->head, fctx->tail, fctx->capa);        
}
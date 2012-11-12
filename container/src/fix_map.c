#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

typedef struct
{
    void *key;
    void *value;
} pair_t;

typedef struct 
{
    size_t head;
    size_t tail;
    size_t capa;
    pair_t *nodes;
    int (*equal)(void *p1, void *p2);
} fix_map_ctx_t;

size_t fix_map_size(void *ctx)
{
    if (ctx == NULL)
    {
        return 0;
    }
    
    fix_map_ctx_t *fctx = ctx;
    return fctx->tail - fctx->head;
}

int fix_map_is_full(void *ctx)
{
    fix_map_ctx_t *fctx = ctx;
    return fix_map_size(ctx) == fctx->capa ? 1 : 0;
}

int fix_map_is_empty(void *ctx)
{
    return fix_map_size(ctx) == 0 ? 1 : 0;
}

static int fix_map_get_id(fix_map_ctx_t *ctx, void *key)
{
    if (ctx == NULL || fix_map_is_empty(ctx) == 1)
    {
        return -1;
    }
 
    int i = 0;
    for(; i < ctx->capa; i++)
    {
        if (ctx->nodes[i].key != NULL && ctx->equal(key, ctx->nodes[i].key))
        {
            return i;
        }
    }
    
    return -1;
}

void *fix_map_init(size_t capacity, int (*compare)(void *p1, void *p2))
{
    if (capacity == 0)
    {
        return NULL;
    }
    
    fix_map_ctx_t *ctx = calloc(1, sizeof(fix_map_ctx_t));
    ctx->nodes = calloc(capacity + 1, sizeof(pair_t));
    ctx->equal = compare;
    ctx->capa = capacity;
    return ctx;
}

int fix_map_push(void *ctx, void *key, void *value)
{
    if (ctx == NULL)
    {
//        printf("Cannot insert data to queue\n");
        return -1;
    }

    fix_map_ctx_t *fctx = ctx;
    int id = fix_map_get_id(fctx, key);
    if (id != -1)
    {
        fctx->nodes[id].value = value;
    }
    else
    {
        if (fix_map_is_full(ctx) == 1)
        {
            return -1;
        }
        
        fctx->nodes[fctx->tail].key = key;
        fctx->nodes[fctx->tail].value = value;
        fctx->tail++;
    }
    
    return 0;
}

void *fix_map_get(void *ctx, void *key)
{
    fix_map_ctx_t *fctx = ctx;
    int id = fix_map_get_id(fctx, key);
    if (id != -1)
    {
        return fctx->nodes[id].value;
    }
    
    return NULL;
}

void *fix_map_pop(void *ctx, void *key)
{
    fix_map_ctx_t *fctx = ctx;
    int id = fix_map_get_id(fctx, key);
    if (id != -1)
    {
        void *value = fctx->nodes[id].value;
        
        fctx->tail--;
        fctx->nodes[id].key = fctx->nodes[fctx->tail].key;
        fctx->nodes[id].value = fctx->nodes[fctx->tail].value;
        fctx->nodes[fctx->tail].key = NULL;
        return value;
    }
    
    return NULL;
}

void fix_map_destroy(void **ctx)
{
    if (ctx == NULL)
    {
        return;
    }
    
    fix_map_ctx_t *fctx = *ctx;
    free(fctx->nodes);
    fctx->nodes = NULL;
    free(fctx);
    *ctx = NULL;
}
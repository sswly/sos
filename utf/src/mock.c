#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "fix_map.h"

typedef struct 
{
    void *fun_queue;
} mock_ctx_t;

static int compare(void *p1, void *p2)
{
    if (strcmp(p1, p2) == 0)
    {
        return 1;
    }
    
    return 0;
}

void *mock_init(size_t capacity)
{
    void *fun_queue = fix_map_init(capacity, compare);
    if (fun_queue == NULL)
    {
        return NULL;
    }

    mock_ctx_t *ctx = calloc(1, sizeof(mock_ctx_t));
    ctx->fun_queue = fun_queue;
    return ctx;
}
void *mock_find(void *ctx, char *name)
{
    return NULL;
}
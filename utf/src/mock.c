#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "fix_map.h"

static void *mock_queue = NULL;

static int compare(void *p1, void *p2)
{
    if (strcmp(p1, p2) == 0)
    {
        return 1;
    }
    
    return 0;
}

void mock_init(size_t capacity)
{
    mock_queue = fix_map_init(capacity, compare);
}

void mock_reg(char *name, void *stub)
{
    printf("mock_reg %s, %p\n", name, stub);
    fix_map_push(mock_queue, name, stub);
}

void *mock_find(char *name)
{
    void *mock = fix_map_pop(mock_queue, name);
    printf("mock_find %s, %p\n", name, mock);
    return mock;
}
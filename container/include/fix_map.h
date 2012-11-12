#ifndef __FIX_MAP_H__
#define __FIX_MAP_H__

size_t fix_map_size(void *ctx);
void *fix_map_init(size_t capacity, int (*compare)(void *p1, void *p2));
int fix_map_push(void *ctx, void *key, void *value);
void *fix_map_get(void *ctx, void *key);
void *fix_map_pop(void *ctx, void *key);
void fix_map_destroy(void **ctx);

#endif
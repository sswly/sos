#ifndef __FIX_QUEUE_H__
#define __FIX_QUEUE_H__

void *fix_queue_init(size_t capacity);
size_t fix_queue_size(void *ctx);

int fix_queue_push(void *ctx, void *node);
void *fix_queue_pop(void *ctx);
void fix_queue_destroy(void **ctx);
void fix_queue_debug(void *ctx);

#endif
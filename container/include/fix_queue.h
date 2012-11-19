#ifndef __FIX_QUEUE_H__
#define __FIX_QUEUE_H__

#ifdef UT
extern int fix_queue_is_full_stub_ret;
int fix_queue_is_full_stub(void *ctx);
int fix_queue_is_empty_stub(void *ctx);
void *fix_queue_mock_ctx(void *ctx, size_t head, size_t tail, size_t capa);
#endif

void *fix_queue_init(size_t capacity);
size_t fix_queue_size(void *ctx);
int fix_queue_push(void *ctx, void *node);
void *fix_queue_pop(void *ctx);
void fix_queue_destroy(void **ctx);
void fix_queue_debug(void *ctx);

#endif
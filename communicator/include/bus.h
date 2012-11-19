#ifndef __BUS_H__
#define __BUS_H__

void *bus_init(size_t capacity);
int bus_send(void *ctx, void *buf);
void *bus_recv(void *ctx);
void bus_destroy(void **ctx);

#endif
#ifndef __BUS_H__
#define __BUS_H__

void *bus_init(size_t capacity);
void bus_destroy(void **ctx);

#endif
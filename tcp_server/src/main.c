#include <unistd.h>
#include <stdio.h>
#include "bus.h"
#include "thread_worker.h"
#include "cpu.h"

void *test(void *ctx)
{
	printf("hello world\n");
    return NULL;
}

int main(int argc, char **argv)
{
    void *bus = bus_init(1024);
    void *worker = thread_worker_init(bus);
    void *cpu = system_cpu_init();
    
    thread_worker_start(worker);
    
    job_t job = {system_cpu_idle, cpu};
    while (1)
    {
        bus_send(bus, &job);
        sleep(1);
    }
	return 0;
}

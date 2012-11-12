#ifndef __CASES_H__
#define __CASES_H__

#include "utf.h"

#include "test_container.h"
#include "test_communicator.h"

void all_cases()
{
    //add cases for fix queue
    group("fix queue");
    ADD(test_fix_queue_init_0);
    ADD(test_fix_queue_init_1);
    ADD(test_fix_queue_size_0);
    ADD(test_fix_queue_size_1);
    ADD(test_fix_queue_size_2);
    ADD(test_fix_queue_size_3);
    ADD(test_fix_queue_push_0);
    ADD(test_fix_queue_push_1);
    ADD(test_fix_queue_push_2);
    ADD(test_fix_queue_pop_0);
    ADD(test_fix_queue_pop_1);
    ADD(test_fix_queue_pop_2);
    ADD(test_fix_queue_destroy_0);
    ADD(test_fix_queue_destroy_1);

    //add cases for fix map
    group("fix map");
    ADD(test_fix_map_init_0);
    ADD(test_fix_map_init_1);
    ADD(test_fix_map_size_0);
    ADD(test_fix_map_size_1);
    ADD(test_fix_map_size_2);
    ADD(test_fix_map_size_3);
    ADD(test_fix_map_push_0);
    ADD(test_fix_map_push_1);
    ADD(test_fix_map_push_2);
    ADD(test_fix_map_get_0);
    ADD(test_fix_map_get_1);
    ADD(test_fix_map_get_2);
    ADD(test_fix_map_pop_0);
    ADD(test_fix_map_pop_1);
    ADD(test_fix_map_pop_2);
    ADD(test_fix_map_destroy_0);
    ADD(test_fix_map_destroy_1);

    //add cases for bus
    group("bus");
    ADD(test_bus_init_0);
    ADD(test_bus_init_1);
    ADD(test_bus_destroy_0);
    ADD(test_bus_destroy_1);
    
    group("end");
};

#endif
#include <stdio.h>
#include "utf.h"
#include "bus.h"

/**
 * @brief Parameter validation: capacity = 0
 */
test_result_t test_bus_init_0()
{
    EXPECT(NULL, bus_init(0));
    return PASS;
}

/**
 * @brief Parameter validation: capacity != 0
 */
test_result_t test_bus_init_1()
{
    EXPECT_NOT(NULL, bus_init(1));
    return PASS;
}

/**
 * @brief Function validation: normal for normal queue
 */
test_result_t test_bus_destroy_0()
{
    void *ctx = bus_init(1);
    EXPECT_NOT(NULL, ctx);
    bus_destroy(&ctx);
    EXPECT(NULL, ctx);
    
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_bus_destroy_1()
{
    bus_destroy(NULL);
   
    return PASS;
}

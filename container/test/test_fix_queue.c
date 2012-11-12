#include <stdio.h>
#include "utf.h"
#include "fix_queue.h"

/**
 * @brief Parameter validation: capacity = 0
 */
test_result_t test_fix_queue_init_0()
{
    EXPECT(NULL, fix_queue_init(0));
    return PASS;
}

/**
 * @brief Parameter validation: capacity != 0
 */
test_result_t test_fix_queue_init_1()
{
    EXPECT_NOT(NULL, fix_queue_init(1));
    return PASS;
}

/**
 * @brief Function validation: normal for empty queue
 */
test_result_t test_fix_queue_size_0()
{
    void *ctx = fix_queue_init(1);
    EXPECT(0, fix_queue_size(ctx));
    
    return PASS;
}

/**
 * @brief Function validation: normal for non-empty queue
 */
test_result_t test_fix_queue_size_1()
{
    void *ctx = fix_queue_init(1);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    EXPECT(1, fix_queue_size(ctx));
    
    return PASS;
}

/**
 * @brief Function validation: normal for reusing
 */
test_result_t test_fix_queue_size_2()
{
    void *ctx = fix_queue_init(2);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    EXPECT(0, fix_queue_push(ctx, (void *)1235));
    EXPECT(2, fix_queue_size(ctx));
    EXPECT((void *)1234, fix_queue_pop(ctx));
    EXPECT(1, fix_queue_size(ctx));
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    EXPECT(2, fix_queue_size(ctx));
    
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_queue_size_3()
{
    EXPECT(0, fix_queue_size(NULL));    
    return PASS;
}

/**
 * @brief Function validation: abnormal for full queue
 */
test_result_t test_fix_queue_push_0()
{
    void *ctx = fix_queue_init(1);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    EXPECT(-1, fix_queue_push(ctx, (void *)1235));
   
    return PASS;
}

/**
 * @brief Function validation: normal for reusing
 */
test_result_t test_fix_queue_push_1()
{
    void *ctx = fix_queue_init(1);
    fix_queue_debug(ctx);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    fix_queue_debug(ctx);
    EXPECT((void *)1234, fix_queue_pop(ctx));
    fix_queue_debug(ctx);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    fix_queue_debug(ctx);
    EXPECT((void *)1234, fix_queue_pop(ctx));
    fix_queue_debug(ctx);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    fix_queue_debug(ctx);
    EXPECT((void *)1234, fix_queue_pop(ctx));
    fix_queue_debug(ctx);
   
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_queue_push_2()
{
    EXPECT(-1, fix_queue_push(NULL, (void *)1234));
   
    return PASS;
}

/**
 * @brief Function validation: abnormal for empty queue
 */
test_result_t test_fix_queue_pop_0()
{
    void *ctx = fix_queue_init(1);
    EXPECT(NULL, fix_queue_pop(ctx));
   
    return PASS;
}

/**
 * @brief Function validation: normal for non-empty queue
 */
test_result_t test_fix_queue_pop_1()
{
    void *ctx = fix_queue_init(1);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    EXPECT((void *)1234, fix_queue_pop(ctx));
   
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_queue_pop_2()
{
    EXPECT(NULL, fix_queue_pop(NULL));
   
    return PASS;
}

/**
 * @brief Function validation: normal for normal queue
 */
test_result_t test_fix_queue_destroy_0()
{
    void *ctx = fix_queue_init(1);
    EXPECT_NOT(NULL, ctx);
    fix_queue_destroy(&ctx);
    EXPECT(NULL, ctx);
    
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_queue_destroy_1()
{
    fix_queue_destroy(NULL);
   
    return PASS;
}

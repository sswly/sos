#include <stdio.h>
#include "utf.h"
#include "fix_map.h"

int compare(void *p1, void *p2)
{
    return p1 == p2 ? 1 : 0;
}

/**
 * @brief Parameter validation: capacity = 0
 */
test_result_t test_fix_map_init_0()
{
    EXPECT(NULL, fix_map_init(0, compare));
    return PASS;
}

/**
 * @brief Parameter validation: capacity != 0
 */
test_result_t test_fix_map_init_1()
{
    EXPECT_NOT(NULL, fix_map_init(1, compare));
    return PASS;
}

/**
 * @brief Function validation: normal for empty queue
 */
test_result_t test_fix_map_size_0()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_size(ctx));
    
    return PASS;
}

/**
 * @brief Function validation: normal for non-empty queue
 */
test_result_t test_fix_map_size_1()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT(1, fix_map_size(ctx));
    
    return PASS;
}

/**
 * @brief Function validation: normal for reusing
 */
test_result_t test_fix_map_size_2()
{
    void *ctx = fix_map_init(2, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT(0, fix_map_push(ctx, (void *)1235, (void *)5679));
    EXPECT(2, fix_map_size(ctx));
    EXPECT((void *)5678, fix_map_pop(ctx, (void *)1234));
    EXPECT(1, fix_map_size(ctx));
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT(2, fix_map_size(ctx));
    
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_map_size_3()
{
    EXPECT(0, fix_map_size(NULL));    
    return PASS;
}

/**
 * @brief Function validation: abnormal for full map
 */
test_result_t test_fix_map_push_0()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT(-1, fix_map_push(ctx, (void *)1235, (void *)5679));
   
    return PASS;
}

/**
 * @brief Function validation: normal for reusing
 */
test_result_t test_fix_map_push_1()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT((void *)5678, fix_map_get(ctx, (void *)1234));
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5679));
    EXPECT((void *)5679, fix_map_get(ctx, (void *)1234));   

    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_map_push_2()
{
    EXPECT(-1, fix_map_push(NULL, (void *)1234, (void *)5678));
   
    return PASS;
}

/**
 * @brief Function validation: normal for existed item
 */
test_result_t test_fix_map_get_0()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT((void *)5678, fix_map_get(ctx, (void *)1234));
   
    return PASS;
}

/**
 * @brief Function validation: abnormal for unexist item
 */
test_result_t test_fix_map_get_1()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(NULL, fix_map_get(ctx, (void *)1234));
   
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_map_get_2()
{
    EXPECT(NULL, fix_map_get(NULL, (void *)1234));
   
    return PASS;
}

/**
 * @brief Function validation: abnormal for empty queue
 */
test_result_t test_fix_map_pop_0()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(NULL, fix_map_pop(ctx, (void *)1234));
   
    return PASS;
}

/**
 * @brief Function validation: normal for non-empty queue
 */
test_result_t test_fix_map_pop_1()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT(0, fix_map_push(ctx, (void *)1234, (void *)5678));
    EXPECT((void *)5678, fix_map_pop(ctx, (void *)1234));
   
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_map_pop_2()
{
    EXPECT(NULL, fix_map_pop(NULL, (void *)1234));
   
    return PASS;
}

/**
 * @brief Function validation: normal for normal queue
 */
test_result_t test_fix_map_destroy_0()
{
    void *ctx = fix_map_init(1, compare);
    EXPECT_NOT(NULL, ctx);
    fix_map_destroy(&ctx);
    EXPECT(NULL, ctx);
    
    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_map_destroy_1()
{
    fix_map_destroy(NULL);
   
    return PASS;
}
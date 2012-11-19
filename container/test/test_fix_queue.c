#ifdef UT

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
    EXPECT(0, fix_queue_size(fix_queue_mock_ctx(NULL, 0, 0, 1)));
    return PASS;
}

/**
 * @brief Function validation: normal for non-empty queue
 */
test_result_t test_fix_queue_size_1()
{
    EXPECT(1, fix_queue_size(fix_queue_mock_ctx(NULL, 0, 1, 1)));
    return PASS;
}

/**
 * @brief Function validation: normal for reusing
 */
test_result_t test_fix_queue_size_2()
{
    EXPECT(1, fix_queue_size(fix_queue_mock_ctx(NULL, 1, 0, 1)));
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
    MOCK_RETURN(fix_queue_is_full, _stub, 1);
    EXPECT(-1, 
        fix_queue_push(fix_queue_mock_ctx(NULL, 0, 0, 1), (void *)1235));

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
    MOCK(fix_queue_is_empty, _stub);
    EXPECT((void *)1234, fix_queue_pop(ctx));
    fix_queue_debug(ctx);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    fix_queue_debug(ctx);
    MOCK(fix_queue_is_empty, _stub);
    EXPECT((void *)1234, fix_queue_pop(ctx));
    fix_queue_debug(ctx);
    EXPECT(0, fix_queue_push(ctx, (void *)1234));
    fix_queue_debug(ctx);
    MOCK(fix_queue_is_empty, _stub);
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
    MOCK(fix_queue_is_empty, _stub);
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
    MOCK(fix_queue_is_empty, _stub);
    EXPECT((void *)1234, fix_queue_pop(ctx));

    return PASS;
}

/**
 * @brief Parameter validation: ctx = NULL
 */
test_result_t test_fix_queue_pop_2()
{
    MOCK(fix_queue_is_empty, _stub);
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

#endif
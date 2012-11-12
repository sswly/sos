#ifndef __UTF_H__
#define __UTF_H__

#define EXPECT(value, test) if(value != test) \
    { \
        printf("[Error] %s not equal to %s\n", #test, #value);\
        return NP; \
    }
    
#define EXPECT_NOT(value, test) if(value == test) \
    { \
        printf("[Error] %s equal to %s\n", #test, #value);\
        return NP; \
    }

typedef enum
{
    PASS = 0,
    NP = 1,
    NT = 2
} test_result_t;

typedef test_result_t (*test_case_t)(void);

void add_case(test_result_t (*test)(), char *name);
#define ADD(test) add_case(test, #test)
void group(const char *name);

#endif
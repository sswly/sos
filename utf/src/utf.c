#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "utf.h"
#include "cases.h"

size_t nb_cases = 0;
size_t pass_cases = 0;
size_t np_cases = 0;
char *group_name = NULL;

char *str_dup(const char *src)
{
    char *dst = calloc(strlen(src), sizeof(char));
    strcpy(dst, src);
    return dst;
}

void add_case(test_result_t (*test)(), char *name)
{
    if (test() == PASS) 
    { 
        printf("[PASS] %s\n", name); 
        pass_cases++;
    } 
    else 
    { 
        printf("[*NP*] %s\n", name); 
        np_cases++;
    }
    nb_cases++;
}

void group(const char *name)
{
    if (group_name != NULL)
    {
        printf("[Group: %s] all: %u, PASS: %u, NP: %u\n", 
            group_name, nb_cases, pass_cases, np_cases);
        free(group_name);
    }
    
    group_name = str_dup(name);
    nb_cases = 0;
    pass_cases = 0;
    np_cases = 0;
}

int main(int argc, char **argv)
{
    all_cases();
	return 0;
}

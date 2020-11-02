#ifndef CLARET_PARSER_H
#define CLARET_PARSER_H

#include <janet.h>

#ifndef JANET_OUT_OF_MEMORY
#include <stdio.h>
#define JANET_OUT_OF_MEMORY do { fprintf(stderr, "janet out of memory\n"); exit(1); } while (0)
#endif

#define JDOC(x) x

/* Avoid some undefined behavior that was common in the code base. */
void safe_memcpy(void *dest, const void *src, size_t len) {
    if (!len) return;
    memcpy(dest, src, len);
}

void claret_parser_register_type(JanetTable *env);
void claret_parser_register_functions(JanetTable *env);

#endif /* end of include guard */

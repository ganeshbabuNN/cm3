/* Copyright (C) 1990, Digital Equipment Corporation.         */
/* All rights reserved.                                       */
/* See the file COPYRIGHT for a full description.             */

#include "Uucontext.h"

#ifdef __cplusplus
extern "C" {
#endif

void Uucontext__set_stack(ucontext_t* a, void* Start, size_t Size)
{
    a->uc_stack.ss_sp = Start;
    a->uc_stack.ss_size = Size;
}

/*
see http://www.opengroup.org/onlinepubs/009695399/functions/swapcontext.html
*/

/* Systems lacking context functions: Cygwin, OpenBSD, Darwin prior to 10.5
 * Systems with context functions: Linux, NetBSD, FreeBSD, Solaris, HPUX
 * though HPUX warns that they won't stay compatible.
 * ?VMS, ?Tru64, ?Irix, ?AIX */

#if defined(__sun) \
    || defined(__linux) \
    || defined(__NetBSD__) \
    || defined(__hpux) \
    || defined(__FreeBSD__) \

#include <assert.h>

int Uucontext__getcontext(ucontext_t* context)
{
    return getcontext(context);
}

int Uucontext__setcontext(const ucontext_t* context)
{
    return setcontext(context);
}

void
Uucontext__makecontext(
    ucontext_t* context,
    void (*function)(),
    int argc,
    size_t a1,
    size_t a2,
    size_t a3,
    size_t a4,
    size_t a5,
    size_t a6,
    size_t a7,
    size_t a8)
{
/* - Is it portable to pass more parameters than argc claims?
 * - Can this be done better, portably? Supporting arbitrary argc?
 * - 1 is probably all we need. */
    assert(argc <= 8);
    makecontext(context, function, argc, a1, a2, a3, a4, a5, a6, a7, a8);
}

int Uucontext__swapcontext(ucontext_t* old, const ucontext_t* new)
{
    return swapcontext(old, new);
}

#endif

#ifdef __cplusplus
} /* extern C */
#endif


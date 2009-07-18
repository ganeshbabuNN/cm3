/* Copyright (C) 1990, Digital Equipment Corporation.         */
/* All rights reserved.                                       */
/* See the file COPYRIGHT for a full description.             */

#include "m3unix.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _WIN32

m3_uid_t Uugid__geteuid(void)
{
    return geteuid();
}

int Uugid__setreuid(m3_uid_t ruid, m3_uid_t euid)
{
    return setreuid(ruid, euid);
}

m3_gid_t Uugid__getegid(void)
{
    return getegid();
}

#endif

#ifdef __cplusplus
}
#endif

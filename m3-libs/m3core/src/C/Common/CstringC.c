/* Copyright (C) 1989, Digital Equipment Corporation           */
/* All rights reserved.                                        */
/* See the file COPYRIGHT for a full description.              */

#include "m3core.h"

#ifdef _MSC_VER
#pragma optimize("gty", on)
#endif

#define M3MODULE Cstring

M3WRAP3(void*, memchr, const void*, int, size_t)
M3WRAP3(void*, memcpy, void*, const void*, size_t)
M3WRAP3(void*, memset, void*, int, size_t)
M3WRAP3(int, memcmp, const void*, const void*, size_t)
M3WRAP2(char*, strcpy, char*, const char*)
M3WRAP3(char*, strncpy, char*, const char*, size_t)
M3WRAP2(char*, strcat, char*, const char*)
M3WRAP3(char*, strncat, char*, const char*, size_t)
M3WRAP2(char*, strchr, const char*, int)
M3WRAP2(char*, strrchr, const char*, int)
M3WRAP2(char*, strpbrk, const char*, const char*)
M3WRAP2(char*, strtok, char*, const char*)
M3WRAP2(int, strcmp, const char*, const char*)
M3WRAP3(int, strncmp, const char*, const char*, size_t)
M3WRAP1(size_t, strlen, const char*)
M3WRAP2(size_t, strspn, const char*, const char*)
M3WRAP2(size_t, strcspn, const char*, const char*)
M3WRAP3(void*, memmove, void*, const void*, size_t)
M3WRAP2(int, strcoll, const char*, const char*)
M3WRAP3(size_t, strxfrm, char*, const char*, size_t)
M3WRAP2(char*, strstr, const char*, const char*)
M3WRAP1(char*, strerror, int)

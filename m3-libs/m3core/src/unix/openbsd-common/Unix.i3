(* Copyright (C) 1993, Digital Equipment Corporation                  *)
(* All rights reserved.                                               *)
(* See the file COPYRIGHT for a full description.                     *)

INTERFACE Unix;

FROM Ctypes IMPORT short, int, long, const_char_star, char_star, char_star_star;
FROM Utypes IMPORT off_t, size_t, pid_t;
FROM Utime IMPORT struct_timeval;

TYPE
  ptrdiff_t = INTEGER;

CONST
  MaxPathLen = 1024;
  MSETUID = 8_4000;
  MSETGID = 8_2000;
  MSTICKY = 8_1000;
  MROWNER = 8_0400;
  MWOWNER = 8_0200;
  MXOWNER = 8_0100;
  MRGROUP = 8_0040;
  MWGROUP = 8_0020;
  MXGROUP = 8_0010;
  MROTHER = 8_0004;
  MWOTHER = 8_0002;
  MXOTHER = 8_0001;
  Mrwrwrw = MROWNER + MWOWNER + MRGROUP + MWGROUP + MROTHER + MWOTHER;
  F_OK = 0;
  X_OK = 1;
  W_OK = 2;
  R_OK = 4;

<*EXTERNAL*> PROCEDURE access (path: const_char_star; mod: int): int;
<*EXTERNAL*> PROCEDURE chdir (path: const_char_star): int;
<*EXTERNAL*> PROCEDURE close (d: int): int;
<*EXTERNAL*> PROCEDURE dup2 (oldd, newd: int): int;
<*EXTERNAL*> PROCEDURE execve (name: const_char_star;  argv, envp: char_star_star): int;

<*EXTERNAL*> PROCEDURE exit (i: int);
<*EXTERNAL "_exit"*> PROCEDURE underscore_exit (i: int);

CONST
  F_SETFD = 2;
  F_GETFL = 3;
  F_SETFL = 4;

  (* in this case, you need to pass LOOPHOLE (ADR (v), int)
     for arg, where v is a variable of type struct_flock *)
  F_SETLK = 8;

TYPE
  struct_flock = RECORD
    l_start: off_t := 0L;
    l_len: off_t := 0L;
    l_pid: pid_t := 0;
    l_type: short;
    l_whence: short;
  END;

CONST
  F_UNLCK = 2;
  F_WRLCK = 3;

<*EXTERNAL*> PROCEDURE fcntl (fd, request, arg: int): int;

<*EXTERNAL*> PROCEDURE flock (fd, operation: int): int;
<*EXTERNAL*> PROCEDURE fsync (fd: int): int;
<*EXTERNAL*> PROCEDURE getdtablesize (): int;
<*EXTERNAL*> PROCEDURE gethostname (name: char_star; namelen: int): int;
<*EXTERNAL*> PROCEDURE getpagesize (): int;
<*EXTERNAL*> PROCEDURE getcwd (pathname: char_star; size: size_t): char_star;

CONST
  FIONREAD = 16_4004667f;

<*EXTERNAL*> PROCEDURE ioctl (d, request: int; argp: ADDRESS): int;

CONST (* lseek(whence) *)
  L_SET = 0;
  L_INCR = 1;
  L_XTND = 2;

<*EXTERNAL*> PROCEDURE lseek (d: int; offset: off_t; whence: int): off_t;

<*EXTERNAL*> PROCEDURE tell (d: int): long;
<*EXTERNAL*> PROCEDURE mkdir (path: const_char_star; mode: int): int;

CONST
  O_RDONLY = 16_0000;
  O_RDWR = 16_0002;
  O_CREAT = 16_0200;
  O_EXCL = 16_0800;
  O_TRUNC = 16_0400;
  O_NONBLOCK = 16_0004;
  O_NDELAY = O_NONBLOCK; (* compat *)
  M3_NONBLOCK = O_NONBLOCK;

<*EXTERNAL*> PROCEDURE open (name: const_char_star; flags, mode: int): int;
<*EXTERNAL*> PROCEDURE creat (name: const_char_star; mode: int): int;

CONST
  readEnd = 0;
  writeEnd = 1;
<*EXTERNAL*> PROCEDURE pipe (VAR fildes: ARRAY [0..1] OF int): int;

<*EXTERNAL*> PROCEDURE readlink (path: const_char_star; buf: ADDRESS; bufsize: int): int;
<*EXTERNAL*> PROCEDURE rename (from, to: const_char_star): int;
<*EXTERNAL*> PROCEDURE rmdir (path: const_char_star): int;
<*EXTERNAL*> PROCEDURE symlink (name1, name2: const_char_star): int;
<*EXTERNAL*> PROCEDURE ftruncate (fd: int; length: off_t): int;
<*EXTERNAL*> PROCEDURE unlink (path: const_char_star): int;
<*EXTERNAL*> PROCEDURE utimes (file: const_char_star; tvp: UNTRACED REF ARRAY [0..1] OF struct_timeval): int;
<*EXTERNAL*> PROCEDURE vfork (): int;

CONST
  MAX_FDSET = 1024;

TYPE
  FDSet = SET OF [0 .. MAX_FDSET - 1];

<*EXTERNAL*> PROCEDURE select (nfds: int; readfds, writefds, exceptfds: UNTRACED REF FDSet; timeout: UNTRACED REF struct_timeval): int;

END Unix.

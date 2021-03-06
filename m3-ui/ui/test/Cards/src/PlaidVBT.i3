(* Copyright (C) 1992, Digital Equipment Corporation                         *)
(* All rights reserved.                                                      *)
(* See the file COPYRIGHT for a full description.                            *)
(*                                                                           *)
(* by Steve Glassman, Mark Manasse and Greg Nelson           *)
(* Last modified on Mon Feb 24 14:01:23 PST 1992 by muller   *)
(*      modified on Sun Nov 10 17:47:01 PST 1991 by gnelson  *)
(*      modified on Wed Sep 11 15:55:26 PDT 1991 by msm      *)
<*PRAGMA LL*>

INTERFACE PlaidVBT;

IMPORT VBT;

TYPE T <: VBT.Leaf;

(* A newly allocated "PlaidVBT" needs no further initialization. *)

END PlaidVBT.

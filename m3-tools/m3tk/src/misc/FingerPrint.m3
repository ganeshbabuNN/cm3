UNSAFE MODULE FingerPrint;

(***************************************************************************)
(*                      Copyright (C) Olivetti 1989                        *)
(*                          All Rights reserved                            *)
(*                                                                         *)
(* Use and copy of this software and preparation of derivative works based *)
(* upon this software are permitted to any person, provided this same      *)
(* copyright notice and the following Olivetti warranty disclaimer are     *) 
(* included in any copy of the software or any modification thereof or     *)
(* derivative work therefrom made by any person.                           *)
(*                                                                         *)
(* This software is made available AS IS and Olivetti disclaims all        *)
(* warranties with respect to this software, whether expressed or implied  *)
(* under any law, including all implied warranties of merchantibility and  *)
(* fitness for any purpose. In no event shall Olivetti be liable for any   *)
(* damages whatsoever resulting from loss of use, data or profits or       *)
(* otherwise arising out of or in connection with the use or performance   *)
(* of this software.                                                       *)
(***************************************************************************)

IMPORT Text AS M3Text, Word;

CONST
  (*BITSPERBYTE = 8;*) (* unlikely to be machine dependent *)

  (* THESE VALUES ARE NO LONGER USED DIRECTLY.  THEY ARE USED IN THE 
     GenFPTables to generate the two following tables.  The interesting
     procedure for that program and the fingerprint procedure it uses
     are included in this module (as a comment) for completeness.
  *)
  (*
  FPa = 2_10010001101111000100011010101111;
  FPb = 2_11001010000110100000110000010111;
  *)
  (* other choices of 32 bit hash polynomials are:
     (but the FPTables have to be re-generated)
     10000001100011001110101110110111
     10011011111110101001101011110011
     11001101111110000000000001010001
     10100111001011101001000100100011
     10110101111010011110010000001011
     11000001001011110111111011100011
     11011000000001101110101001111011
     10011011101110100001101100001101
     11111001000001111011100101100111
  *)

(*
   Each entry in the FPTable is the remainder of fingerprinting the
   39 bits strings formed by a leading byte and then all zeros.
PROCEDURE Generate() RAISES {}=
  VAR
    h1, h2: INTEGER;
  BEGIN
    FOR i := 0 TO 255 DO
      h1 := 0;
      h2 := 0;
      Incremental(i DIV 2, h1, h2);
      Incremental(i MOD 2 * 128, h1, h2);
      Incremental(0, h1, h2);
      Incremental(0, h1, h2);
      Incremental(0, h1, h2);
      FPaTable[i] := h1;
      FPbTable[i] := h2;
    END;

    (* the fast algorithm uses values that are shifted left by 1
       to be just a little bit faster
    *)
    WITH out = StdIO.Out() DO
      IO.PutText(out, "CONST\n  FPaTable = FPTable{\n");
      FOR i := 0 TO 254 DO
        IO.PutF(out, "    2_%032s,\n", Fmt.Int(FPaTable[i], Fmt.Binary));
      END;
      IO.PutF(out, "    2_%032s,\n    }\n", 
       Fmt.Int(FPaTable[255], Fmt.Binary));
      IO.PutText(out, "\n  FPbTable = FPTable{\n");
      FOR i := 0 TO 254 DO
        IO.PutF(out, "    2_%032s,\n", Fmt.Int(FPbTable[i], Fmt.Binary));
      END;
      IO.PutF(out, "    2_%032s,\n    }\n", 
       Fmt.Int(FPbTable[255], Fmt.Binary));
    END;
  END Generate;

PROCEDURE Incremental(b: Byte;
                      VAR (* in/out *) h1out, h2out: INTEGER) RAISES {}=
  VAR
    h1, h2: INTEGER;
    byte: INTEGER;
  BEGIN
    (* use local variables h1 and h2 to avoid the indirections in using
       h1out and h2out
    *)
    h1 := h1out;
    h2 := h2out;
    (* integer byte saves a type check from the shift *)
    byte := b;
    FOR j := 0 TO BITSPERBYTE - 1 DO
      h1 := Word.Shift(h1, 1);
      h2 := Word.Shift(h2, 1);
      IF byte >= 128 THEN  (* check the high bit to add into h1, h2 *)
        INC(h1);
        INC(h2);
        DEC(byte, 128);
      END;
      byte := Word.Shift(byte, 1);
      IF h1 < 0 THEN (* check the high bit for whether to XOR *)
        h1 := Word.Xor(h1, FPa);
      END;
      IF h2 < 0 THEN (* check the high bit for whether to XOR *)
        h2 := Word.Xor(h2, FPb);
      END;
    END;
    h1out := h1;
    h2out := h2;
  END Incremental;
*)

TYPE
  FPTable = ARRAY [0..255] OF INTEGER;

CONST
  FPaTable = FPTable{
    Word.Shift (2_0000000000000000000000000000000, 1),
    Word.Shift (2_0010001101111000100011010101111, 1),
    Word.Shift (2_0100011011110001000110101011110, 1),
    Word.Shift (2_0110010110001001100101111110001, 1),
    Word.Shift (2_1000110111100010001101010111100, 1),
    Word.Shift (2_1010111010011010101110000010011, 1),
    Word.Shift (2_1100101100010011001011111100010, 1),
    Word.Shift (2_1110100001101011101000101001101, 1),
    Word.Shift (2_0011100010111100111001111010111, 1),
    Word.Shift (2_0001101111000100011010101111000, 1),
    Word.Shift (2_0111111001001101111111010001001, 1),
    Word.Shift (2_0101110100110101011100000100110, 1),
    Word.Shift (2_1011010101011110110100101101011, 1),
    Word.Shift (2_1001011000100110010111111000100, 1),
    Word.Shift (2_1111001110101111110010000110101, 1),
    Word.Shift (2_1101000011010111010001010011010, 1),
    Word.Shift (2_0111000101111001110011110101110, 1),
    Word.Shift (2_0101001000000001010000100000001, 1),
    Word.Shift (2_0011011110001000110101011110000, 1),
    Word.Shift (2_0001010011110000010110001011111, 1),
    Word.Shift (2_1111110010011011111110100010010, 1),
    Word.Shift (2_1101111111100011011101110111101, 1),
    Word.Shift (2_1011101001101010111000001001100, 1),
    Word.Shift (2_1001100100010010011011011100011, 1),
    Word.Shift (2_0100100111000101001010001111001, 1),
    Word.Shift (2_0110101010111101101001011010110, 1),
    Word.Shift (2_0000111100110100001100100100111, 1),
    Word.Shift (2_0010110001001100101111110001000, 1),
    Word.Shift (2_1100010000100111000111011000101, 1),
    Word.Shift (2_1110011101011111100100001101010, 1),
    Word.Shift (2_1000001011010110000001110011011, 1),
    Word.Shift (2_1010000110101110100010100110100, 1),
    Word.Shift (2_1110001011110011100111101011100, 1),
    Word.Shift (2_1100000110001011000100111110011, 1),
    Word.Shift (2_1010010000000010100001000000010, 1),
    Word.Shift (2_1000011101111010000010010101101, 1),
    Word.Shift (2_0110111100010001101010111100000, 1),
    Word.Shift (2_0100110001101001001001101001111, 1),
    Word.Shift (2_0010100111100000101100010111110, 1),
    Word.Shift (2_0000101010011000001111000010001, 1),
    Word.Shift (2_1101101001001111011110010001011, 1),
    Word.Shift (2_1111100100110111111101000100100, 1),
    Word.Shift (2_1001110010111110011000111010101, 1),
    Word.Shift (2_1011111111000110111011101111010, 1),
    Word.Shift (2_0101011110101101010011000110111, 1),
    Word.Shift (2_0111010011010101110000010011000, 1),
    Word.Shift (2_0001000101011100010101101101001, 1),
    Word.Shift (2_0011001000100100110110111000110, 1),
    Word.Shift (2_1001001110001010010100011110010, 1),
    Word.Shift (2_1011000011110010110111001011101, 1),
    Word.Shift (2_1101010101111011010010110101100, 1),
    Word.Shift (2_1111011000000011110001100000011, 1),
    Word.Shift (2_0001111001101000011001001001110, 1),
    Word.Shift (2_0011110100010000111010011100001, 1),
    Word.Shift (2_0101100010011001011111100010000, 1),
    Word.Shift (2_0111101111100001111100110111111, 1),
    Word.Shift (2_1010101100110110101101100100101, 1),
    Word.Shift (2_1000100001001110001110110001010, 1),
    Word.Shift (2_1110110111000111101011001111011, 1),
    Word.Shift (2_1100111010111111001000011010100, 1),
    Word.Shift (2_0010011011010100100000110011001, 1),
    Word.Shift (2_0000010110101100000011100110110, 1),
    Word.Shift (2_0110000000100101100110011000111, 1),
    Word.Shift (2_0100001101011101000101001101000, 1),
    Word.Shift (2_1110011010011111101100000010111, 1),
    Word.Shift (2_1100010111100111001111010111000, 1),
    Word.Shift (2_1010000001101110101010101001001, 1),
    Word.Shift (2_1000001100010110001001111100110, 1),
    Word.Shift (2_0110101101111101100001010101011, 1),
    Word.Shift (2_0100100000000101000010000000100, 1),
    Word.Shift (2_0010110110001100100111111110101, 1),
    Word.Shift (2_0000111011110100000100101011010, 1),
    Word.Shift (2_1101111000100011010101111000000, 1),
    Word.Shift (2_1111110101011011110110101101111, 1),
    Word.Shift (2_1001100011010010010011010011110, 1),
    Word.Shift (2_1011101110101010110000000110001, 1),
    Word.Shift (2_0101001111000001011000101111100, 1),
    Word.Shift (2_0111000010111001111011111010011, 1),
    Word.Shift (2_0001010100110000011110000100010, 1),
    Word.Shift (2_0011011001001000111101010001101, 1),
    Word.Shift (2_1001011111100110011111110111001, 1),
    Word.Shift (2_1011010010011110111100100010110, 1),
    Word.Shift (2_1101000100010111011001011100111, 1),
    Word.Shift (2_1111001001101111111010001001000, 1),
    Word.Shift (2_0001101000000100010010100000101, 1),
    Word.Shift (2_0011100101111100110001110101010, 1),
    Word.Shift (2_0101110011110101010100001011011, 1),
    Word.Shift (2_0111111110001101110111011110100, 1),
    Word.Shift (2_1010111101011010100110001101110, 1),
    Word.Shift (2_1000110000100010000101011000001, 1),
    Word.Shift (2_1110100110101011100000100110000, 1),
    Word.Shift (2_1100101011010011000011110011111, 1),
    Word.Shift (2_0010001010111000101011011010010, 1),
    Word.Shift (2_0000000111000000001000001111101, 1),
    Word.Shift (2_0110010001001001101101110001100, 1),
    Word.Shift (2_0100011100110001001110100100011, 1),
    Word.Shift (2_0000010001101100001011101001011, 1),
    Word.Shift (2_0010011100010100101000111100100, 1),
    Word.Shift (2_0100001010011101001101000010101, 1),
    Word.Shift (2_0110000111100101101110010111010, 1),
    Word.Shift (2_1000100110001110000110111110111, 1),
    Word.Shift (2_1010101011110110100101101011000, 1),
    Word.Shift (2_1100111101111111000000010101001, 1),
    Word.Shift (2_1110110000000111100011000000110, 1),
    Word.Shift (2_0011110011010000110010010011100, 1),
    Word.Shift (2_0001111110101000010001000110011, 1),
    Word.Shift (2_0111101000100001110100111000010, 1),
    Word.Shift (2_0101100101011001010111101101101, 1),
    Word.Shift (2_1011000100110010111111000100000, 1),
    Word.Shift (2_1001001001001010011100010001111, 1),
    Word.Shift (2_1111011111000011111001101111110, 1),
    Word.Shift (2_1101010010111011011010111010001, 1),
    Word.Shift (2_0111010100010101111000011100101, 1),
    Word.Shift (2_0101011001101101011011001001010, 1),
    Word.Shift (2_0011001111100100111110110111011, 1),
    Word.Shift (2_0001000010011100011101100010100, 1),
    Word.Shift (2_1111100011110111110101001011001, 1),
    Word.Shift (2_1101101110001111010110011110110, 1),
    Word.Shift (2_1011111000000110110011100000111, 1),
    Word.Shift (2_1001110101111110010000110101000, 1),
    Word.Shift (2_0100110110101001000001100110010, 1),
    Word.Shift (2_0110111011010001100010110011101, 1),
    Word.Shift (2_0000101101011000000111001101100, 1),
    Word.Shift (2_0010100000100000100100011000011, 1),
    Word.Shift (2_1100000001001011001100110001110, 1),
    Word.Shift (2_1110001100110011101111100100001, 1),
    Word.Shift (2_1000011010111010001010011010000, 1),
    Word.Shift (2_1010010111000010101001001111111, 1),
    Word.Shift (2_1110111001000111111011010000001, 1),
    Word.Shift (2_1100110100111111011000000101110, 1),
    Word.Shift (2_1010100010110110111101111011111, 1),
    Word.Shift (2_1000101111001110011110101110000, 1),
    Word.Shift (2_0110001110100101110110000111101, 1),
    Word.Shift (2_0100000011011101010101010010010, 1),
    Word.Shift (2_0010010101010100110000101100011, 1),
    Word.Shift (2_0000011000101100010011111001100, 1),
    Word.Shift (2_1101011011111011000010101010110, 1),
    Word.Shift (2_1111010110000011100001111111001, 1),
    Word.Shift (2_1001000000001010000100000001000, 1),
    Word.Shift (2_1011001101110010100111010100111, 1),
    Word.Shift (2_0101101100011001001111111101010, 1),
    Word.Shift (2_0111100001100001101100101000101, 1),
    Word.Shift (2_0001110111101000001001010110100, 1),
    Word.Shift (2_0011111010010000101010000011011, 1),
    Word.Shift (2_1001111100111110001000100101111, 1),
    Word.Shift (2_1011110001000110101011110000000, 1),
    Word.Shift (2_1101100111001111001110001110001, 1),
    Word.Shift (2_1111101010110111101101011011110, 1),
    Word.Shift (2_0001001011011100000101110010011, 1),
    Word.Shift (2_0011000110100100100110100111100, 1),
    Word.Shift (2_0101010000101101000011011001101, 1),
    Word.Shift (2_0111011101010101100000001100010, 1),
    Word.Shift (2_1010011110000010110001011111000, 1),
    Word.Shift (2_1000010011111010010010001010111, 1),
    Word.Shift (2_1110000101110011110111110100110, 1),
    Word.Shift (2_1100001000001011010100100001001, 1),
    Word.Shift (2_0010101001100000111100001000100, 1),
    Word.Shift (2_0000100100011000011111011101011, 1),
    Word.Shift (2_0110110010010001111010100011010, 1),
    Word.Shift (2_0100111111101001011001110110101, 1),
    Word.Shift (2_0000110010110100011100111011101, 1),
    Word.Shift (2_0010111111001100111111101110010, 1),
    Word.Shift (2_0100101001000101011010010000011, 1),
    Word.Shift (2_0110100100111101111001000101100, 1),
    Word.Shift (2_1000000101010110010001101100001, 1),
    Word.Shift (2_1010001000101110110010111001110, 1),
    Word.Shift (2_1100011110100111010111000111111, 1),
    Word.Shift (2_1110010011011111110100010010000, 1),
    Word.Shift (2_0011010000001000100101000001010, 1),
    Word.Shift (2_0001011101110000000110010100101, 1),
    Word.Shift (2_0111001011111001100011101010100, 1),
    Word.Shift (2_0101000110000001000000111111011, 1),
    Word.Shift (2_1011100111101010101000010110110, 1),
    Word.Shift (2_1001101010010010001011000011001, 1),
    Word.Shift (2_1111111100011011101110111101000, 1),
    Word.Shift (2_1101110001100011001101101000111, 1),
    Word.Shift (2_0111110111001101101111001110011, 1),
    Word.Shift (2_0101111010110101001100011011100, 1),
    Word.Shift (2_0011101100111100101001100101101, 1),
    Word.Shift (2_0001100001000100001010110000010, 1),
    Word.Shift (2_1111000000101111100010011001111, 1),
    Word.Shift (2_1101001101010111000001001100000, 1),
    Word.Shift (2_1011011011011110100100110010001, 1),
    Word.Shift (2_1001010110100110000111100111110, 1),
    Word.Shift (2_0100010101110001010110110100100, 1),
    Word.Shift (2_0110011000001001110101100001011, 1),
    Word.Shift (2_0000001110000000010000011111010, 1),
    Word.Shift (2_0010000011111000110011001010101, 1),
    Word.Shift (2_1100100010010011011011100011000, 1),
    Word.Shift (2_1110101111101011111000110110111, 1),
    Word.Shift (2_1000111001100010011101001000110, 1),
    Word.Shift (2_1010110100011010111110011101001, 1),
    Word.Shift (2_0000100011011000010111010010110, 1),
    Word.Shift (2_0010101110100000110100000111001, 1),
    Word.Shift (2_0100111000101001010001111001000, 1),
    Word.Shift (2_0110110101010001110010101100111, 1),
    Word.Shift (2_1000010100111010011010000101010, 1),
    Word.Shift (2_1010011001000010111001010000101, 1),
    Word.Shift (2_1100001111001011011100101110100, 1),
    Word.Shift (2_1110000010110011111111111011011, 1),
    Word.Shift (2_0011000001100100101110101000001, 1),
    Word.Shift (2_0001001100011100001101111101110, 1),
    Word.Shift (2_0111011010010101101000000011111, 1),
    Word.Shift (2_0101010111101101001011010110000, 1),
    Word.Shift (2_1011110110000110100011111111101, 1),
    Word.Shift (2_1001111011111110000000101010010, 1),
    Word.Shift (2_1111101101110111100101010100011, 1),
    Word.Shift (2_1101100000001111000110000001100, 1),
    Word.Shift (2_0111100110100001100100100111000, 1),
    Word.Shift (2_0101101011011001000111110010111, 1),
    Word.Shift (2_0011111101010000100010001100110, 1),
    Word.Shift (2_0001110000101000000001011001001, 1),
    Word.Shift (2_1111010001000011101001110000100, 1),
    Word.Shift (2_1101011100111011001010100101011, 1),
    Word.Shift (2_1011001010110010101111011011010, 1),
    Word.Shift (2_1001000111001010001100001110101, 1),
    Word.Shift (2_0100000100011101011101011101111, 1),
    Word.Shift (2_0110001001100101111110001000000, 1),
    Word.Shift (2_0000011111101100011011110110001, 1),
    Word.Shift (2_0010010010010100111000100011110, 1),
    Word.Shift (2_1100110011111111010000001010011, 1),
    Word.Shift (2_1110111110000111110011011111100, 1),
    Word.Shift (2_1000101000001110010110100001101, 1),
    Word.Shift (2_1010100101110110110101110100010, 1),
    Word.Shift (2_1110101000101011110000111001010, 1),
    Word.Shift (2_1100100101010011010011101100101, 1),
    Word.Shift (2_1010110011011010110110010010100, 1),
    Word.Shift (2_1000111110100010010101000111011, 1),
    Word.Shift (2_0110011111001001111101101110110, 1),
    Word.Shift (2_0100010010110001011110111011001, 1),
    Word.Shift (2_0010000100111000111011000101000, 1),
    Word.Shift (2_0000001001000000011000010000111, 1),
    Word.Shift (2_1101001010010111001001000011101, 1),
    Word.Shift (2_1111000111101111101010010110010, 1),
    Word.Shift (2_1001010001100110001111101000011, 1),
    Word.Shift (2_1011011100011110101100111101100, 1),
    Word.Shift (2_0101111101110101000100010100001, 1),
    Word.Shift (2_0111110000001101100111000001110, 1),
    Word.Shift (2_0001100110000100000010111111111, 1),
    Word.Shift (2_0011101011111100100001101010000, 1),
    Word.Shift (2_1001101101010010000011001100100, 1),
    Word.Shift (2_1011100000101010100000011001011, 1),
    Word.Shift (2_1101110110100011000101100111010, 1),
    Word.Shift (2_1111111011011011100110110010101, 1),
    Word.Shift (2_0001011010110000001110011011000, 1),
    Word.Shift (2_0011010111001000101101001110111, 1),
    Word.Shift (2_0101000001000001001000110000110, 1),
    Word.Shift (2_0111001100111001101011100101001, 1),
    Word.Shift (2_1010001111101110111010110110011, 1),
    Word.Shift (2_1000000010010110011001100011100, 1),
    Word.Shift (2_1110010100011111111100011101101, 1),
    Word.Shift (2_1100011001100111011111001000010, 1),
    Word.Shift (2_0010111000001100110111100001111, 1),
    Word.Shift (2_0000110101110100010100110100000, 1),
    Word.Shift (2_0110100011111101110001001010001, 1),
    Word.Shift (2_0100101110000101010010011111110, 1)
    };

  FPbTable = FPTable{
    Word.Shift (2_0000000000000000000000000000000, 1),
    Word.Shift (2_1001010000110100000110000010111, 1),
    Word.Shift (2_1011110001011100001010000111001, 1),
    Word.Shift (2_0010100001101000001100000101110, 1),
    Word.Shift (2_1110110010001100010010001100101, 1),
    Word.Shift (2_0111100010111000010100001110010, 1),
    Word.Shift (2_0101000011010000011000001011100, 1),
    Word.Shift (2_1100010011100100011110001001011, 1),
    Word.Shift (2_0100110100101100100010011011101, 1),
    Word.Shift (2_1101100100011000100100011001010, 1),
    Word.Shift (2_1111000101110000101000011100100, 1),
    Word.Shift (2_0110010101000100101110011110011, 1),
    Word.Shift (2_1010000110100000110000010111000, 1),
    Word.Shift (2_0011010110010100110110010101111, 1),
    Word.Shift (2_0001110111111100111010010000001, 1),
    Word.Shift (2_1000100111001000111100010010110, 1),
    Word.Shift (2_1001101001011001000100110111010, 1),
    Word.Shift (2_0000111001101101000010110101101, 1),
    Word.Shift (2_0010011000000101001110110000011, 1),
    Word.Shift (2_1011001000110001001000110010100, 1),
    Word.Shift (2_0111011011010101010110111011111, 1),
    Word.Shift (2_1110001011100001010000111001000, 1),
    Word.Shift (2_1100101010001001011100111100110, 1),
    Word.Shift (2_0101111010111101011010111110001, 1),
    Word.Shift (2_1101011101110101100110101100111, 1),
    Word.Shift (2_0100001101000001100000101110000, 1),
    Word.Shift (2_0110101100101001101100101011110, 1),
    Word.Shift (2_1111111100011101101010101001001, 1),
    Word.Shift (2_0011101111111001110100100000010, 1),
    Word.Shift (2_1010111111001101110010100010101, 1),
    Word.Shift (2_1000011110100101111110100111011, 1),
    Word.Shift (2_0001001110010001111000100101100, 1),
    Word.Shift (2_1010000010000110001111101100011, 1),
    Word.Shift (2_0011010010110010001001101110100, 1),
    Word.Shift (2_0001110011011010000101101011010, 1),
    Word.Shift (2_1000100011101110000011101001101, 1),
    Word.Shift (2_0100110000001010011101100000110, 1),
    Word.Shift (2_1101100000111110011011100010001, 1),
    Word.Shift (2_1111000001010110010111100111111, 1),
    Word.Shift (2_0110010001100010010001100101000, 1),
    Word.Shift (2_1110110110101010101101110111110, 1),
    Word.Shift (2_0111100110011110101011110101001, 1),
    Word.Shift (2_0101000111110110100111110000111, 1),
    Word.Shift (2_1100010111000010100001110010000, 1),
    Word.Shift (2_0000000100100110111111111011011, 1),
    Word.Shift (2_1001010100010010111001111001100, 1),
    Word.Shift (2_1011110101111010110101111100010, 1),
    Word.Shift (2_0010100101001110110011111110101, 1),
    Word.Shift (2_0011101011011111001011011011001, 1),
    Word.Shift (2_1010111011101011001101011001110, 1),
    Word.Shift (2_1000011010000011000001011100000, 1),
    Word.Shift (2_0001001010110111000111011110111, 1),
    Word.Shift (2_1101011001010011011001010111100, 1),
    Word.Shift (2_0100001001100111011111010101011, 1),
    Word.Shift (2_0110101000001111010011010000101, 1),
    Word.Shift (2_1111111000111011010101010010010, 1),
    Word.Shift (2_0111011111110011101001000000100, 1),
    Word.Shift (2_1110001111000111101111000010011, 1),
    Word.Shift (2_1100101110101111100011000111101, 1),
    Word.Shift (2_0101111110011011100101000101010, 1),
    Word.Shift (2_1001101101111111111011001100001, 1),
    Word.Shift (2_0000111101001011111101001110110, 1),
    Word.Shift (2_0010011100100011110001001011000, 1),
    Word.Shift (2_1011001100010111110111001001111, 1),
    Word.Shift (2_1101010100111000011001011010001, 1),
    Word.Shift (2_0100000100001100011111011000110, 1),
    Word.Shift (2_0110100101100100010011011101000, 1),
    Word.Shift (2_1111110101010000010101011111111, 1),
    Word.Shift (2_0011100110110100001011010110100, 1),
    Word.Shift (2_1010110110000000001101010100011, 1),
    Word.Shift (2_1000010111101000000001010001101, 1),
    Word.Shift (2_0001000111011100000111010011010, 1),
    Word.Shift (2_1001100000010100111011000001100, 1),
    Word.Shift (2_0000110000100000111101000011011, 1),
    Word.Shift (2_0010010001001000110001000110101, 1),
    Word.Shift (2_1011000001111100110111000100010, 1),
    Word.Shift (2_0111010010011000101001001101001, 1),
    Word.Shift (2_1110000010101100101111001111110, 1),
    Word.Shift (2_1100100011000100100011001010000, 1),
    Word.Shift (2_0101110011110000100101001000111, 1),
    Word.Shift (2_0100111101100001011101101101011, 1),
    Word.Shift (2_1101101101010101011011101111100, 1),
    Word.Shift (2_1111001100111101010111101010010, 1),
    Word.Shift (2_0110011100001001010001101000101, 1),
    Word.Shift (2_1010001111101101001111100001110, 1),
    Word.Shift (2_0011011111011001001001100011001, 1),
    Word.Shift (2_0001111110110001000101100110111, 1),
    Word.Shift (2_1000101110000101000011100100000, 1),
    Word.Shift (2_0000001001001101111111110110110, 1),
    Word.Shift (2_1001011001111001111001110100001, 1),
    Word.Shift (2_1011111000010001110101110001111, 1),
    Word.Shift (2_0010101000100101110011110011000, 1),
    Word.Shift (2_1110111011000001101101111010011, 1),
    Word.Shift (2_0111101011110101101011111000100, 1),
    Word.Shift (2_0101001010011101100111111101010, 1),
    Word.Shift (2_1100011010101001100001111111101, 1),
    Word.Shift (2_0111010110111110010110110110010, 1),
    Word.Shift (2_1110000110001010010000110100101, 1),
    Word.Shift (2_1100100111100010011100110001011, 1),
    Word.Shift (2_0101110111010110011010110011100, 1),
    Word.Shift (2_1001100100110010000100111010111, 1),
    Word.Shift (2_0000110100000110000010111000000, 1),
    Word.Shift (2_0010010101101110001110111101110, 1),
    Word.Shift (2_1011000101011010001000111111001, 1),
    Word.Shift (2_0011100010010010110100101101111, 1),
    Word.Shift (2_1010110010100110110010101111000, 1),
    Word.Shift (2_1000010011001110111110101010110, 1),
    Word.Shift (2_0001000011111010111000101000001, 1),
    Word.Shift (2_1101010000011110100110100001010, 1),
    Word.Shift (2_0100000000101010100000100011101, 1),
    Word.Shift (2_0110100001000010101100100110011, 1),
    Word.Shift (2_1111110001110110101010100100100, 1),
    Word.Shift (2_1110111111100111010010000001000, 1),
    Word.Shift (2_0111101111010011010100000011111, 1),
    Word.Shift (2_0101001110111011011000000110001, 1),
    Word.Shift (2_1100011110001111011110000100110, 1),
    Word.Shift (2_0000001101101011000000001101101, 1),
    Word.Shift (2_1001011101011111000110001111010, 1),
    Word.Shift (2_1011111100110111001010001010100, 1),
    Word.Shift (2_0010101100000011001100001000011, 1),
    Word.Shift (2_1010001011001011110000011010101, 1),
    Word.Shift (2_0011011011111111110110011000010, 1),
    Word.Shift (2_0001111010010111111010011101100, 1),
    Word.Shift (2_1000101010100011111100011111011, 1),
    Word.Shift (2_0100111001000111100010010110000, 1),
    Word.Shift (2_1101101001110011100100010100111, 1),
    Word.Shift (2_1111001000011011101000010001001, 1),
    Word.Shift (2_0110011000101111101110010011110, 1),
    Word.Shift (2_0011111001000100110100110110101, 1),
    Word.Shift (2_1010101001110000110010110100010, 1),
    Word.Shift (2_1000001000011000111110110001100, 1),
    Word.Shift (2_0001011000101100111000110011011, 1),
    Word.Shift (2_1101001011001000100110111010000, 1),
    Word.Shift (2_0100011011111100100000111000111, 1),
    Word.Shift (2_0110111010010100101100111101001, 1),
    Word.Shift (2_1111101010100000101010111111110, 1),
    Word.Shift (2_0111001101101000010110101101000, 1),
    Word.Shift (2_1110011101011100010000101111111, 1),
    Word.Shift (2_1100111100110100011100101010001, 1),
    Word.Shift (2_0101101100000000011010101000110, 1),
    Word.Shift (2_1001111111100100000100100001101, 1),
    Word.Shift (2_0000101111010000000010100011010, 1),
    Word.Shift (2_0010001110111000001110100110100, 1),
    Word.Shift (2_1011011110001100001000100100011, 1),
    Word.Shift (2_1010010000011101110000000001111, 1),
    Word.Shift (2_0011000000101001110110000011000, 1),
    Word.Shift (2_0001100001000001111010000110110, 1),
    Word.Shift (2_1000110001110101111100000100001, 1),
    Word.Shift (2_0100100010010001100010001101010, 1),
    Word.Shift (2_1101110010100101100100001111101, 1),
    Word.Shift (2_1111010011001101101000001010011, 1),
    Word.Shift (2_0110000011111001101110001000100, 1),
    Word.Shift (2_1110100100110001010010011010010, 1),
    Word.Shift (2_0111110100000101010100011000101, 1),
    Word.Shift (2_0101010101101101011000011101011, 1),
    Word.Shift (2_1100000101011001011110011111100, 1),
    Word.Shift (2_0000010110111101000000010110111, 1),
    Word.Shift (2_1001000110001001000110010100000, 1),
    Word.Shift (2_1011100111100001001010010001110, 1),
    Word.Shift (2_0010110111010101001100010011001, 1),
    Word.Shift (2_1001111011000010111011011010110, 1),
    Word.Shift (2_0000101011110110111101011000001, 1),
    Word.Shift (2_0010001010011110110001011101111, 1),
    Word.Shift (2_1011011010101010110111011111000, 1),
    Word.Shift (2_0111001001001110101001010110011, 1),
    Word.Shift (2_1110011001111010101111010100100, 1),
    Word.Shift (2_1100111000010010100011010001010, 1),
    Word.Shift (2_0101101000100110100101010011101, 1),
    Word.Shift (2_1101001111101110011001000001011, 1),
    Word.Shift (2_0100011111011010011111000011100, 1),
    Word.Shift (2_0110111110110010010011000110010, 1),
    Word.Shift (2_1111101110000110010101000100101, 1),
    Word.Shift (2_0011111101100010001011001101110, 1),
    Word.Shift (2_1010101101010110001101001111001, 1),
    Word.Shift (2_1000001100111110000001001010111, 1),
    Word.Shift (2_0001011100001010000111001000000, 1),
    Word.Shift (2_0000010010011011111111101101100, 1),
    Word.Shift (2_1001000010101111111001101111011, 1),
    Word.Shift (2_1011100011000111110101101010101, 1),
    Word.Shift (2_0010110011110011110011101000010, 1),
    Word.Shift (2_1110100000010111101101100001001, 1),
    Word.Shift (2_0111110000100011101011100011110, 1),
    Word.Shift (2_0101010001001011100111100110000, 1),
    Word.Shift (2_1100000001111111100001100100111, 1),
    Word.Shift (2_0100100110110111011101110110001, 1),
    Word.Shift (2_1101110110000011011011110100110, 1),
    Word.Shift (2_1111010111101011010111110001000, 1),
    Word.Shift (2_0110000111011111010001110011111, 1),
    Word.Shift (2_1010010100111011001111111010100, 1),
    Word.Shift (2_0011000100001111001001111000011, 1),
    Word.Shift (2_0001100101100111000101111101101, 1),
    Word.Shift (2_1000110101010011000011111111010, 1),
    Word.Shift (2_1110101101111100101101101100100, 1),
    Word.Shift (2_0111111101001000101011101110011, 1),
    Word.Shift (2_0101011100100000100111101011101, 1),
    Word.Shift (2_1100001100010100100001101001010, 1),
    Word.Shift (2_0000011111110000111111100000001, 1),
    Word.Shift (2_1001001111000100111001100010110, 1),
    Word.Shift (2_1011101110101100110101100111000, 1),
    Word.Shift (2_0010111110011000110011100101111, 1),
    Word.Shift (2_1010011001010000001111110111001, 1),
    Word.Shift (2_0011001001100100001001110101110, 1),
    Word.Shift (2_0001101000001100000101110000000, 1),
    Word.Shift (2_1000111000111000000011110010111, 1),
    Word.Shift (2_0100101011011100011101111011100, 1),
    Word.Shift (2_1101111011101000011011111001011, 1),
    Word.Shift (2_1111011010000000010111111100101, 1),
    Word.Shift (2_0110001010110100010001111110010, 1),
    Word.Shift (2_0111000100100101101001011011110, 1),
    Word.Shift (2_1110010100010001101111011001001, 1),
    Word.Shift (2_1100110101111001100011011100111, 1),
    Word.Shift (2_0101100101001101100101011110000, 1),
    Word.Shift (2_1001110110101001111011010111011, 1),
    Word.Shift (2_0000100110011101111101010101100, 1),
    Word.Shift (2_0010000111110101110001010000010, 1),
    Word.Shift (2_1011010111000001110111010010101, 1),
    Word.Shift (2_0011110000001001001011000000011, 1),
    Word.Shift (2_1010100000111101001101000010100, 1),
    Word.Shift (2_1000000001010101000001000111010, 1),
    Word.Shift (2_0001010001100001000111000101101, 1),
    Word.Shift (2_1101000010000101011001001100110, 1),
    Word.Shift (2_0100010010110001011111001110001, 1),
    Word.Shift (2_0110110011011001010011001011111, 1),
    Word.Shift (2_1111100011101101010101001001000, 1),
    Word.Shift (2_0100101111111010100010000000111, 1),
    Word.Shift (2_1101111111001110100100000010000, 1),
    Word.Shift (2_1111011110100110101000000111110, 1),
    Word.Shift (2_0110001110010010101110000101001, 1),
    Word.Shift (2_1010011101110110110000001100010, 1),
    Word.Shift (2_0011001101000010110110001110101, 1),
    Word.Shift (2_0001101100101010111010001011011, 1),
    Word.Shift (2_1000111100011110111100001001100, 1),
    Word.Shift (2_0000011011010110000000011011010, 1),
    Word.Shift (2_1001001011100010000110011001101, 1),
    Word.Shift (2_1011101010001010001010011100011, 1),
    Word.Shift (2_0010111010111110001100011110100, 1),
    Word.Shift (2_1110101001011010010010010111111, 1),
    Word.Shift (2_0111111001101110010100010101000, 1),
    Word.Shift (2_0101011000000110011000010000110, 1),
    Word.Shift (2_1100001000110010011110010010001, 1),
    Word.Shift (2_1101000110100011100110110111101, 1),
    Word.Shift (2_0100010110010111100000110101010, 1),
    Word.Shift (2_0110110111111111101100110000100, 1),
    Word.Shift (2_1111100111001011101010110010011, 1),
    Word.Shift (2_0011110100101111110100111011000, 1),
    Word.Shift (2_1010100100011011110010111001111, 1),
    Word.Shift (2_1000000101110011111110111100001, 1),
    Word.Shift (2_0001010101000111111000111110110, 1),
    Word.Shift (2_1001110010001111000100101100000, 1),
    Word.Shift (2_0000100010111011000010101110111, 1),
    Word.Shift (2_0010000011010011001110101011001, 1),
    Word.Shift (2_1011010011100111001000101001110, 1),
    Word.Shift (2_0111000000000011010110100000101, 1),
    Word.Shift (2_1110010000110111010000100010010, 1),
    Word.Shift (2_1100110001011111011100100111100, 1),
    Word.Shift (2_0101100001101011011010100101011, 1)
    };

(* This procedure generates hash values that are twice (shifted left 1)
   the values of the "standard" algorithm as described by Rabin.
   This allows a slightly more efficient alignment of the bits.
*)
PROCEDURE IncrementalSingle(byte: Byte;
                            VAR h1: INTEGER) RAISES {}=
  VAR
    b, r, h: INTEGER;
  BEGIN
    b := Word.Shift(byte, 1);

    h := h1;
    r := Word.Extract(h, 24, 8);
    h := Word.Shift(h, 8);
    INC(h, b);
    h := Word.Xor(h, FPaTable[r]); (* edit the c to get rid of the range check *)
    h1 := h;
  END IncrementalSingle;

PROCEDURE Incremental(byte: Byte;
                      VAR h1, h2: INTEGER) RAISES {}=
  VAR
    b, r, h: INTEGER;
  BEGIN
    b := Word.Shift(byte, 1);

    h := h1;
    r := Word.Extract(h, 24, 8);
    h := Word.Shift(h, 8);
    INC(h, b);
    h := Word.Xor(h, FPaTable[r]); (* edit the c to get rid of the range check *)
    h1 := h;

    h := h2;
    r := Word.Extract(h, 24, 8);
    h := Word.Shift(h, 8);
    INC(h, b);
    h := Word.Xor(h, FPbTable[r]); (* edit the c to get rid of the range check *)
    h2 := h;
  END Incremental;

PROCEDURE DataIncrementalSingle(addr: ADDRESS;
                                lengthInBytes: INTEGER;
                                VAR (* out *) h1Out: INTEGER) RAISES {}=
  VAR
    rb: UNTRACED REF Byte;
    byte: INTEGER;
    h1, r: INTEGER;
  BEGIN
    (* use local variables h1, h2 to avoid the indirections in using h1 and h2
    *)
    rb := addr;
    h1 := h1Out;
    FOR i := 1 TO lengthInBytes DO
      byte := rb^;
      byte := Word.Shift(byte, 1);
      INC(rb);

      r := Word.Extract(h1, 24, 8);
      h1 := Word.Shift(h1, 8);
      INC(h1, byte);
      h1 := Word.Xor(h1, FPaTable[r]); (* edit the c to get rid of the range check *)
    END;
    h1Out := h1;
  END DataIncrementalSingle;

PROCEDURE DataIncremental(addr: ADDRESS;
                          lengthInBytes: INTEGER;
                          VAR (* out *) h1Out, h2Out: INTEGER) RAISES {}=
  VAR
    rb: UNTRACED REF Byte;
    byte: INTEGER;
    h1, h2, r: INTEGER;
  BEGIN
    (* use local variables h1, h2 to avoid the indirections in using h1 and h2
    *)
    rb := addr;
    h1 := h1Out;
    h2 := h2Out;
    FOR i := 1 TO lengthInBytes DO
      byte := rb^;
      byte := Word.Shift(byte, 1);
      INC(rb);

      r := Word.Extract(h1, 24, 8);
      h1 := Word.Shift(h1, 8);
      INC(h1, byte);
      h1 := Word.Xor(h1, FPaTable[r]); (* edit the c to get rid of the range check *)

      r := Word.Extract(h2, 24, 8);
      h2 := Word.Shift(h2, 8);
      INC(h2, byte);
      h2 := Word.Xor(h2, FPbTable[r]); (* edit the c to get rid of the range check *)
    END;
    h1Out := h1;
    h2Out := h2;
  END DataIncremental;

PROCEDURE Data(addr: ADDRESS;
               lengthInBytes: INTEGER;
               VAR (* out *) h1, h2: INTEGER) RAISES {}=
  BEGIN
    h1 := 0;
    h2 := 0;
    DataIncremental(addr, lengthInBytes, h1, h2);
  END Data;

PROCEDURE DataSingle(addr: ADDRESS;
                     lengthInBytes: INTEGER;
                     VAR (* out *) h: INTEGER) RAISES {} =
  BEGIN
    h := 0;
    DataIncrementalSingle(addr, lengthInBytes, h);
  END DataSingle;

PROCEDURE Text(t: TEXT; 
               VAR (* out *) h1, h2: INTEGER) RAISES {}=
  BEGIN
    h1 := 0;
    h2 := 0;
    TextIncremental(t, h1, h2);
  END Text;

PROCEDURE TextSingle(t: TEXT; 
                     VAR (* out *) h: INTEGER) RAISES {}=
  BEGIN
    h := 0;
    TextIncrementalSingle(t, h);
  END TextSingle;

PROCEDURE TextIncremental(t: TEXT; 
                          VAR (* out *) h1, h2: INTEGER) RAISES {}=
  BEGIN
    TextSubIncremental(t, 0, M3Text.Length(t), h1, h2);
  END TextIncremental;

PROCEDURE TextSubIncremental(t: TEXT;   start, len: CARDINAL;
                          VAR (* out *) h1, h2: INTEGER) RAISES {}=
  VAR buf: ARRAY [0..255] OF CHAR;
  BEGIN
    WHILE (len > 0) DO
      M3Text.SetChars(buf, t, start);
      DataIncremental(ADR(buf[0]), MIN(len, NUMBER(buf)), h1, h2);
      INC(start, NUMBER(buf));  DEC(len, NUMBER(buf));
    END;
  END TextSubIncremental;

PROCEDURE TextIncrementalSingle(t: TEXT; 
                                VAR (* out *) h: INTEGER) RAISES {}=
  VAR buf: ARRAY [0..255] OF CHAR;  x := 0;  len := M3Text.Length (t);
  BEGIN
    WHILE (x < len) DO
      M3Text.SetChars(buf, t, x);
      DataIncrementalSingle(ADR(buf[0]), MIN(len-x, NUMBER(buf)), h);
      INC(x, NUMBER(buf));
    END;
  END TextIncrementalSingle;

BEGIN

END FingerPrint.

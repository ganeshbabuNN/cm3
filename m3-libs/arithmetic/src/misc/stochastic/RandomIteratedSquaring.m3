MODULE RandomIteratedSquaring;
(*Gnu CopyLefted.*)
(*
Abstract:
Pseudo-random number generator by Warren D. Smith.
*)

IMPORT RandomBasic,
       LongRealBasic AS R,
       LongRealTrans AS RT,
       Word;
IMPORT RandomRep;

<*UNUSED*>
CONST Module = "RandomIteratedSquaring.";
(*==========================*)

(*------------------*)
CONST
  moduis = 9739.0D0 * 9719.0D0;
      (* = 94653341. Factors are each primes, 3 mod 4. *)
(*
  DefaultSeed1 = 3145981;
  DefaultSeed2 = 2718280;
  DefaultXis = 243213.0D0;
*)

REVEAL T = RandomBasic.TBoolean BRANDED OBJECT
    xis : R.T;
    seedbitind : INTEGER := 3;
    seed1, seed2 : Word.T;
  OVERRIDES
    engine:=Engine;
  END;

(** Note: period of the bit sequence this produces is
 * only 23658471. However, that should be adequate for its
 * intended purpose, which is to initialize the state of
 * the other generators to something interesting.
 * (And if the seeds are nonzero, period will
 * generally be 2*Word.Size*23658471.)
 * If seed1 or seed2 are nonzero, then will add a perturbation to output
 * according to the bits of the seed words.
*********************************************)
PROCEDURE Engine(SELF:T) : BOOLEAN =
  VAR
    perturb : Word.T;
  BEGIN
    DEC(SELF.seedbitind);
    IF SELF.seedbitind<0 THEN SELF.seedbitind := Word.Size * 2 - 1; END;
    IF SELF.seedbitind<Word.Size THEN
      perturb := Word.And(
                 Word.RightShift(SELF.seed1, SELF.seedbitind), 2_1 );
    ELSE
      perturb := Word.And(
            Word.RightShift(SELF.seed2, SELF.seedbitind-Word.Size), 2_1 );
    END;

    SELF.xis := (SELF.xis * SELF.xis) MOD moduis;

    RETURN ( (SELF.xis < (moduis-R.One)*RT.Half) = (perturb#0) );
  END Engine;

(*==========================*)
BEGIN
END RandomIteratedSquaring.

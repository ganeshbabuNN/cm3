(* Copyright (C) 1992, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)

GENERIC MODULE And (Rep);

IMPORT CG, CallExpr, Expr, ExprRep, Procedure, Type, ProcType;
IMPORT IntegerExpr, Formal, Value, Target, TWord, TInt;
FROM Rep IMPORT T;
FROM TargetMap IMPORT Word_types;

VAR Z: CallExpr.MethodList;
VAR formals: Value.T;
VAR rep: [FIRST (Word_types) .. LAST (Word_types)];

PROCEDURE Check (ce: CallExpr.T;  VAR cs: Expr.CheckState) =
  BEGIN
    EVAL Formal.CheckArgs (cs, ce.args, formals, ce.proc);
    ce.type := T;
  END Check;

PROCEDURE Compile (ce: CallExpr.T) =
  BEGIN
    Expr.Compile (ce.args[0]);
    Expr.Compile (ce.args[1]);
    CG.And (Word_types[rep].cg_type);
  END Compile;

PROCEDURE Fold (ce: CallExpr.T): Expr.T =
  VAR w0, w1, result: Target.Int;
  BEGIN
    IF GetArgs (ce.args, w0, w1) THEN
      TWord.And (w0, w1, result);
      EVAL TInt.Extend (result, Word_types[rep].bytes, result);
      RETURN IntegerExpr.New (T, result);
    END;
    RETURN NIL;
  END Fold;

PROCEDURE GetArgs (args: Expr.List;  VAR w0, w1: Target.Int): BOOLEAN =
  VAR e0, e1: Expr.T;  t: Type.T;
  BEGIN
    e0 := Expr.ConstValue (args[0]);
    e1 := Expr.ConstValue (args[1]);
    RETURN (e0 # NIL) AND IntegerExpr.Split (e0, w0, t) AND 
           (e1 # NIL) AND IntegerExpr.Split (e1, w1, t);
  END GetArgs;

PROCEDURE GetBounds (ce: CallExpr.T;  VAR min, max: Target.Int) =
  VAR min_a, max_a, min_b, max_b : Target.Int;
  BEGIN
    Expr.GetBounds (ce.args[0], min_a, max_a);
    Expr.GetBounds (ce.args[1], min_b, max_b);
    IF TInt.LT (min_a, TInt.Zero) OR TInt.LT (max_a, TInt.Zero) THEN
      (* "a" could be 16_ffff...  => any bits from "b" can survive *)
      IF TInt.LT (min_b, TInt.Zero) OR TInt.LT (max_b, TInt.Zero) THEN
        (* too complicated *)
        EVAL Type.GetBounds (T, min, max);
      ELSE
        (* "b" is non-negative, but "a" could be 16_ffff... *)
        min := TInt.Zero;  (* no bits in common *)
        max := max_b;
      END;
    ELSIF TInt.LT (min_b, TInt.Zero) OR TInt.LT (max_b, TInt.Zero) THEN
      (* "a" is non-negative, but "b" could be 16_ffff... *)
      min := TInt.Zero;  (* no bits in common *)
      max := max_a;
    ELSE
      (* both a and b are non-negative *)
      min := TInt.Zero;  (* no bits in common *)
      TWord.And (max_a, max_b, max);
    END;
  END GetBounds;

PROCEDURE Initialize (r: INTEGER) =
  VAR
    x0 := Formal.NewBuiltin ("x", 0, T);
    y0 := Formal.NewBuiltin ("y", 1, T);
    t0 := ProcType.New (T, x0, y0);
  BEGIN
    rep := r;
    Z := CallExpr.NewMethodList (2, 2, TRUE, TRUE, TRUE, T,
                                 NIL, NIL,
                                 CallExpr.NotAddressable,
                                 Check,
                                 CallExpr.PrepArgs,
                                 Compile,
                                 CallExpr.NoLValue,
                                 CallExpr.NoLValue,
                                 CallExpr.NotBoolean,
                                 CallExpr.NotBoolean,
                                 Fold,
                                 GetBounds,
                                 CallExpr.IsNever, (* writable *)
                                 CallExpr.IsNever, (* designator *)
                                 CallExpr.NotWritable (* noteWriter *));
    Procedure.DefinePredefined ("And", Z, FALSE, t0, assignable:=TRUE);
    formals := ProcType.Formals (t0);
  END Initialize;

BEGIN
END And.

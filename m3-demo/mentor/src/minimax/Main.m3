(* Copyright (C) 1994, Digital Equipment Corporation         *)
(* All rights reserved.                                      *)
(* See the file COPYRIGHT for a full description.            *)

MODULE Main EXPORTS Main;

IMPORT MinimaxBundle, Rsrc, ZeusPanel;

BEGIN
  ZeusPanel.Interact(
    "Minimax",
    Rsrc.BuildPath("$MINIMAXPATH", MinimaxBundle.Get()));
END Main. 

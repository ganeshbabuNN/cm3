(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDialogButtonBox;

FROM QtAbstractButton IMPORT QAbstractButton;
FROM QtPushButton IMPORT QPushButton;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT Orientation;


TYPE

  T = QDialogButtonBox;
  StandardButtons = INTEGER;


CONST                            (* Enum ButtonRole *)
  InvalidRole     = -1;
  AcceptRole      = 0;
  RejectRole      = 1;
  DestructiveRole = 2;
  ActionRole      = 3;
  HelpRole        = 4;
  YesRole         = 5;
  NoRole          = 6;
  ResetRole       = 7;
  ApplyRole       = 8;
  NRoles          = 9;

TYPE                             (* Enum ButtonRole *)
  ButtonRole = [-1 .. 9];

CONST                            (* Enum StandardButton *)
  NoButton        = 0;
  Ok              = 1024;
  Save            = 2048;
  SaveAll         = 4096;
  Open            = 8192;
  Yes             = 16384;
  YesToAll        = 32768;
  No              = 65536;
  NoToAll         = 131072;
  Abort           = 262144;
  Retry           = 524288;
  Ignore          = 1048576;
  Close           = 2097152;
  Cancel          = 4194304;
  Discard         = 8388608;
  Help            = 16777216;
  Apply           = 33554432;
  Reset           = 67108864;
  RestoreDefaults = 134217728;
  FirstButton     = 1024;
  LastButton      = 134217728;

TYPE                             (* Enum StandardButton *)
  StandardButton = [0 .. 134217728];

TYPE                             (* Enum ButtonLayout *)
  ButtonLayout = {WinLayout, MacLayout, KdeLayout, GnomeLayout};

TYPE
  QDialogButtonBox <: QDialogButtonBoxPublic;
  QDialogButtonBoxPublic =
    QWidget BRANDED OBJECT
    METHODS
      init_0 (parent: QWidget; ): QDialogButtonBox;
      init_1 (): QDialogButtonBox;
      init_2 (orientation: Orientation; parent: QWidget; ):
              QDialogButtonBox;
      init_3 (orientation: Orientation; ): QDialogButtonBox;
      init_4 (buttons    : StandardButtons;
              orientation: Orientation;
              parent     : QWidget;         ): QDialogButtonBox;
      init_5 (buttons: StandardButtons; orientation: Orientation; ):
              QDialogButtonBox;
      init_6             (buttons: StandardButtons; ): QDialogButtonBox;
      setOrientation     (orientation: Orientation; );
      orientation        (): Orientation;
      addButton          (button: QAbstractButton; role: ButtonRole; );
      addButton1         (text: TEXT; role: ButtonRole; ): QPushButton;
      addButton2         (button: StandardButton; ): QPushButton;
      removeButton       (button: QAbstractButton; );
      clear              ();
      buttonRole         (button: QAbstractButton; ): ButtonRole;
      setStandardButtons (buttons: StandardButtons; );
      standardButtons    (): StandardButtons;
      standardButton     (button: QAbstractButton; ): StandardButton;
      button             (which: StandardButton; ): QPushButton;
      setCenterButtons   (center: BOOLEAN; );
      centerButtons      (): BOOLEAN;
      destroyCxx         ();
    END;


END QtDialogButtonBox.

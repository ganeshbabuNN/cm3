(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtPushButton;


FROM QtIcon IMPORT QIcon;
FROM QtSize IMPORT QSize;
FROM QtWidget IMPORT QWidget;
FROM QtString IMPORT QString;
FROM QtMenu IMPORT QMenu;
IMPORT QtPushButtonRaw;


IMPORT WeakRef;

PROCEDURE New_QPushButton0 (self:QPushButton; parent: QWidget;
): QPushButton =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(parent.cxxObj,ADDRESS);
BEGIN
result := QtPushButtonRaw.New_QPushButton0(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton0;

PROCEDURE New_QPushButton1 (self:QPushButton;): QPushButton =
VAR
result : ADDRESS;
BEGIN
result := QtPushButtonRaw.New_QPushButton1();

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton1;

PROCEDURE New_QPushButton2 (self:QPushButton; text: TEXT;
 parent: QWidget;
): QPushButton =
VAR
result : ADDRESS;
qstr_text := NEW(QString).initQString(text);
arg1tmp :=  LOOPHOLE(qstr_text.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(parent.cxxObj,ADDRESS);
BEGIN
result := QtPushButtonRaw.New_QPushButton2(arg1tmp, arg2tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton2;

PROCEDURE New_QPushButton3 (self:QPushButton; text: TEXT;
): QPushButton =
VAR
result : ADDRESS;
qstr_text := NEW(QString).initQString(text);
arg1tmp :=  LOOPHOLE(qstr_text.cxxObj,ADDRESS);
BEGIN
result := QtPushButtonRaw.New_QPushButton3(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton3;

PROCEDURE New_QPushButton4 (self:QPushButton; icon: QIcon;
 text: TEXT;
 parent: QWidget;
): QPushButton =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(icon.cxxObj,ADDRESS);
qstr_text := NEW(QString).initQString(text);
arg2tmp :=  LOOPHOLE(qstr_text.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(parent.cxxObj,ADDRESS);
BEGIN
result := QtPushButtonRaw.New_QPushButton4(arg1tmp, arg2tmp, arg3tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton4;

PROCEDURE New_QPushButton5 (self:QPushButton; icon: QIcon;
 text: TEXT;
): QPushButton =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(icon.cxxObj,ADDRESS);
qstr_text := NEW(QString).initQString(text);
arg2tmp :=  LOOPHOLE(qstr_text.cxxObj,ADDRESS);
BEGIN
result := QtPushButtonRaw.New_QPushButton5(arg1tmp, arg2tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);

RETURN self;
END New_QPushButton5;

PROCEDURE Delete_QPushButton ( self: QPushButton;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.Delete_QPushButton(selfAdr);
END Delete_QPushButton;

PROCEDURE QPushButton_sizeHint ( self: QPushButton;
): QSize =
VAR
ret:ADDRESS; result : QSize;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPushButtonRaw.QPushButton_sizeHint(selfAdr);

  result := NEW(QSize);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPushButton_sizeHint;

PROCEDURE QPushButton_minimumSizeHint ( self: QPushButton;
): QSize =
VAR
ret:ADDRESS; result : QSize;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPushButtonRaw.QPushButton_minimumSizeHint(selfAdr);

  result := NEW(QSize);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPushButton_minimumSizeHint;

PROCEDURE QPushButton_autoDefault ( self: QPushButton;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPushButtonRaw.QPushButton_autoDefault(selfAdr);
END QPushButton_autoDefault;

PROCEDURE QPushButton_setAutoDefault ( self: QPushButton;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.QPushButton_setAutoDefault(selfAdr, arg2);
END QPushButton_setAutoDefault;

PROCEDURE QPushButton_isDefault ( self: QPushButton;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPushButtonRaw.QPushButton_isDefault(selfAdr);
END QPushButton_isDefault;

PROCEDURE QPushButton_setDefault ( self: QPushButton;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.QPushButton_setDefault(selfAdr, arg2);
END QPushButton_setDefault;

PROCEDURE QPushButton_setMenu ( self: QPushButton;
 menu: QMenu;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(menu.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.QPushButton_setMenu(selfAdr, arg2tmp);
END QPushButton_setMenu;

PROCEDURE QPushButton_menu ( self: QPushButton;
): QMenu =
VAR
ret:ADDRESS; result : QMenu;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPushButtonRaw.QPushButton_menu(selfAdr);

  result := NEW(QMenu);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPushButton_menu;

PROCEDURE QPushButton_setFlat ( self: QPushButton;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.QPushButton_setFlat(selfAdr, arg2);
END QPushButton_setFlat;

PROCEDURE QPushButton_isFlat ( self: QPushButton;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPushButtonRaw.QPushButton_isFlat(selfAdr);
END QPushButton_isFlat;

PROCEDURE QPushButton_showMenu ( self: QPushButton;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPushButtonRaw.QPushButton_showMenu(selfAdr);
END QPushButton_showMenu;

PROCEDURE Cleanup_QPushButton(<*UNUSED*>READONLY self: WeakRef.T; ref: REFANY) =
VAR obj : QPushButton := ref;
BEGIN
  Delete_QPushButton(obj);
 END Cleanup_QPushButton;

PROCEDURE Destroy_QPushButton(self : QPushButton) =
BEGIN
  EVAL WeakRef.FromRef(self,Cleanup_QPushButton);
END Destroy_QPushButton;

REVEAL
QPushButton =
QPushButtonPublic BRANDED OBJECT
OVERRIDES
init_0 := New_QPushButton0;
init_1 := New_QPushButton1;
init_2 := New_QPushButton2;
init_3 := New_QPushButton3;
init_4 := New_QPushButton4;
init_5 := New_QPushButton5;
sizeHint := QPushButton_sizeHint;
minimumSizeHint := QPushButton_minimumSizeHint;
autoDefault := QPushButton_autoDefault;
setAutoDefault := QPushButton_setAutoDefault;
isDefault := QPushButton_isDefault;
setDefault := QPushButton_setDefault;
setMenu := QPushButton_setMenu;
menu := QPushButton_menu;
setFlat := QPushButton_setFlat;
isFlat := QPushButton_isFlat;
showMenu := QPushButton_showMenu;
destroyCxx := Destroy_QPushButton;
END;


BEGIN
END QtPushButton.

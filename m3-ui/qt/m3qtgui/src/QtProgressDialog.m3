(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtProgressDialog;


FROM QtLabel IMPORT QLabel;
FROM QtSize IMPORT QSize;
FROM QtPushButton IMPORT QPushButton;
FROM QtProgressBar IMPORT QProgressBar;
IMPORT QtProgressDialogRaw;
FROM QtObject IMPORT QObject;
IMPORT M3toC;
FROM QtWidget IMPORT QWidget;
FROM QtString IMPORT QString;
IMPORT Ctypes AS C;
FROM QtNamespace IMPORT WindowTypes;


IMPORT WeakRef;
FROM QtByteArray IMPORT QByteArray;

PROCEDURE New_QProgressDialog0
  (self: QProgressDialog; parent: QWidget; flags: WindowTypes; ):
  QProgressDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result :=
      QtProgressDialogRaw.New_QProgressDialog0(arg1tmp, ORD(flags));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog0;

PROCEDURE New_QProgressDialog1 (self: QProgressDialog; parent: QWidget; ):
  QProgressDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtProgressDialogRaw.New_QProgressDialog1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog1;

PROCEDURE New_QProgressDialog2 (self: QProgressDialog; ): QProgressDialog =
  VAR result: ADDRESS;
  BEGIN
    result := QtProgressDialogRaw.New_QProgressDialog2();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog2;

PROCEDURE New_QProgressDialog3
  (self                       : QProgressDialog;
   labelText, cancelButtonText: TEXT;
   minimum, maximum           : INTEGER;
   parent                     : QWidget;
   flags                      : WindowTypes;     ): QProgressDialog =
  VAR
    result        : ADDRESS;
    qstr_labelText          := NEW(QString).initQString(labelText);
    arg1tmp                 := LOOPHOLE(qstr_labelText.cxxObj, ADDRESS);
    qstr_cancelButtonText := NEW(QString).initQString(cancelButtonText);
    arg2tmp := LOOPHOLE(qstr_cancelButtonText.cxxObj, ADDRESS);
    arg5tmp := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtProgressDialogRaw.New_QProgressDialog3(
                arg1tmp, arg2tmp, minimum, maximum, arg5tmp, ORD(flags));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog3;

PROCEDURE New_QProgressDialog4 (self: QProgressDialog;
                                labelText, cancelButtonText: TEXT;
                                minimum, maximum           : INTEGER;
                                parent                     : QWidget; ):
  QProgressDialog =
  VAR
    result        : ADDRESS;
    qstr_labelText          := NEW(QString).initQString(labelText);
    arg1tmp                 := LOOPHOLE(qstr_labelText.cxxObj, ADDRESS);
    qstr_cancelButtonText := NEW(QString).initQString(cancelButtonText);
    arg2tmp := LOOPHOLE(qstr_cancelButtonText.cxxObj, ADDRESS);
    arg5tmp := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtProgressDialogRaw.New_QProgressDialog4(
                arg1tmp, arg2tmp, minimum, maximum, arg5tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog4;

PROCEDURE New_QProgressDialog5 (self: QProgressDialog;
                                labelText, cancelButtonText: TEXT;
                                minimum, maximum           : INTEGER; ):
  QProgressDialog =
  VAR
    result        : ADDRESS;
    qstr_labelText          := NEW(QString).initQString(labelText);
    arg1tmp                 := LOOPHOLE(qstr_labelText.cxxObj, ADDRESS);
    qstr_cancelButtonText := NEW(QString).initQString(cancelButtonText);
    arg2tmp := LOOPHOLE(qstr_cancelButtonText.cxxObj, ADDRESS);
  BEGIN
    result := QtProgressDialogRaw.New_QProgressDialog5(
                arg1tmp, arg2tmp, minimum, maximum);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);

    RETURN self;
  END New_QProgressDialog5;

PROCEDURE Delete_QProgressDialog (self: QProgressDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.Delete_QProgressDialog(selfAdr);
  END Delete_QProgressDialog;

PROCEDURE QProgressDialog_setLabel
  (self: QProgressDialog; label: QLabel; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(label.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setLabel(selfAdr, arg2tmp);
  END QProgressDialog_setLabel;

PROCEDURE QProgressDialog_setCancelButton
  (self: QProgressDialog; button: QPushButton; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(button.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setCancelButton(selfAdr, arg2tmp);
  END QProgressDialog_setCancelButton;

PROCEDURE QProgressDialog_setBar
  (self: QProgressDialog; bar: QProgressBar; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(bar.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setBar(selfAdr, arg2tmp);
  END QProgressDialog_setBar;

PROCEDURE QProgressDialog_wasCanceled (self: QProgressDialog; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_wasCanceled(selfAdr);
  END QProgressDialog_wasCanceled;

PROCEDURE QProgressDialog_minimum (self: QProgressDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_minimum(selfAdr);
  END QProgressDialog_minimum;

PROCEDURE QProgressDialog_maximum (self: QProgressDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_maximum(selfAdr);
  END QProgressDialog_maximum;

PROCEDURE QProgressDialog_value (self: QProgressDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_value(selfAdr);
  END QProgressDialog_value;

PROCEDURE QProgressDialog_sizeHint (self: QProgressDialog; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtProgressDialogRaw.QProgressDialog_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QProgressDialog_sizeHint;

PROCEDURE QProgressDialog_labelText (self: QProgressDialog; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtProgressDialogRaw.QProgressDialog_labelText(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QProgressDialog_labelText;

PROCEDURE QProgressDialog_minimumDuration (self: QProgressDialog; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_minimumDuration(selfAdr);
  END QProgressDialog_minimumDuration;

PROCEDURE QProgressDialog_setAutoReset
  (self: QProgressDialog; reset: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setAutoReset(selfAdr, reset);
  END QProgressDialog_setAutoReset;

PROCEDURE QProgressDialog_autoReset (self: QProgressDialog; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_autoReset(selfAdr);
  END QProgressDialog_autoReset;

PROCEDURE QProgressDialog_setAutoClose
  (self: QProgressDialog; close: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setAutoClose(selfAdr, close);
  END QProgressDialog_setAutoClose;

PROCEDURE QProgressDialog_autoClose (self: QProgressDialog; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtProgressDialogRaw.QProgressDialog_autoClose(selfAdr);
  END QProgressDialog_autoClose;

PROCEDURE QProgressDialog_open0_0 (self: QProgressDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_open0_0(selfAdr);
  END QProgressDialog_open0_0;

PROCEDURE QProgressDialog_open1
  (self: QProgressDialog; receiver: QObject; member: TEXT; ) =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp              := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg3tmp: C.char_star;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(member);
    QtProgressDialogRaw.QProgressDialog_open1(selfAdr, arg2tmp, arg3tmp);


  END QProgressDialog_open1;

PROCEDURE QProgressDialog_cancel (self: QProgressDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_cancel(selfAdr);
  END QProgressDialog_cancel;

PROCEDURE QProgressDialog_reset (self: QProgressDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_reset(selfAdr);
  END QProgressDialog_reset;

PROCEDURE QProgressDialog_setMaximum
  (self: QProgressDialog; maximum: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setMaximum(selfAdr, maximum);
  END QProgressDialog_setMaximum;

PROCEDURE QProgressDialog_setMinimum
  (self: QProgressDialog; minimum: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setMinimum(selfAdr, minimum);
  END QProgressDialog_setMinimum;

PROCEDURE QProgressDialog_setRange
  (self: QProgressDialog; minimum, maximum: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setRange(selfAdr, minimum, maximum);
  END QProgressDialog_setRange;

PROCEDURE QProgressDialog_setValue
  (self: QProgressDialog; progress: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setValue(selfAdr, progress);
  END QProgressDialog_setValue;

PROCEDURE QProgressDialog_setLabelText
  (self: QProgressDialog; text: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setLabelText(selfAdr, arg2tmp);
  END QProgressDialog_setLabelText;

PROCEDURE QProgressDialog_setCancelButtonText
  (self: QProgressDialog; text: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setCancelButtonText(
      selfAdr, arg2tmp);
  END QProgressDialog_setCancelButtonText;

PROCEDURE QProgressDialog_setMinimumDuration
  (self: QProgressDialog; ms: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtProgressDialogRaw.QProgressDialog_setMinimumDuration(selfAdr, ms);
  END QProgressDialog_setMinimumDuration;

PROCEDURE Cleanup_QProgressDialog
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QProgressDialog := ref;
  BEGIN
    Delete_QProgressDialog(obj);
  END Cleanup_QProgressDialog;

PROCEDURE Destroy_QProgressDialog (self: QProgressDialog) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QProgressDialog);
  END Destroy_QProgressDialog;

REVEAL
  QProgressDialog =
    QProgressDialogPublic BRANDED OBJECT
    OVERRIDES
      init_0              := New_QProgressDialog0;
      init_1              := New_QProgressDialog1;
      init_2              := New_QProgressDialog2;
      init_3              := New_QProgressDialog3;
      init_4              := New_QProgressDialog4;
      init_5              := New_QProgressDialog5;
      setLabel            := QProgressDialog_setLabel;
      setCancelButton     := QProgressDialog_setCancelButton;
      setBar              := QProgressDialog_setBar;
      wasCanceled         := QProgressDialog_wasCanceled;
      minimum             := QProgressDialog_minimum;
      maximum             := QProgressDialog_maximum;
      value               := QProgressDialog_value;
      sizeHint            := QProgressDialog_sizeHint;
      labelText           := QProgressDialog_labelText;
      minimumDuration     := QProgressDialog_minimumDuration;
      setAutoReset        := QProgressDialog_setAutoReset;
      autoReset           := QProgressDialog_autoReset;
      setAutoClose        := QProgressDialog_setAutoClose;
      autoClose           := QProgressDialog_autoClose;
      open0_0             := QProgressDialog_open0_0;
      open1               := QProgressDialog_open1;
      cancel              := QProgressDialog_cancel;
      reset               := QProgressDialog_reset;
      setMaximum          := QProgressDialog_setMaximum;
      setMinimum          := QProgressDialog_setMinimum;
      setRange            := QProgressDialog_setRange;
      setValue            := QProgressDialog_setValue;
      setLabelText        := QProgressDialog_setLabelText;
      setCancelButtonText := QProgressDialog_setCancelButtonText;
      setMinimumDuration  := QProgressDialog_setMinimumDuration;
      destroyCxx          := Destroy_QProgressDialog;
    END;


BEGIN
END QtProgressDialog.

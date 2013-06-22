(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtApplication;


FROM QtIcon IMPORT QIcon;
FROM QtSize IMPORT QSize;
FROM QtFont IMPORT QFont;
FROM QtStyle IMPORT QStyle;
FROM QGuiStubs IMPORT QFontMetrics, QCursor, QInputContext;
FROM QtPalette IMPORT QPalette;
IMPORT M3toC;
FROM QtString IMPORT QString;
IMPORT Ctypes AS C;
FROM QtWidget IMPORT QWidget;
IMPORT QtApplicationRaw;
FROM QtPoint IMPORT QPoint;
FROM QtNamespace IMPORT MouseButtonFlags, UIEffect, KeyboardModifierFlags,
                        LayoutDirection;


IMPORT WeakRef;
FROM QtByteArray IMPORT QByteArray;

VAR
  m3argc: C.int;
  m3argv: UNTRACED REF ARRAY OF C.char_star;

PROCEDURE New_QApplication0 (         self: QApplication;
                                      argc: INTEGER;
                             READONLY argv: ARRAY OF TEXT;
                                      arg3: INTEGER;       ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result :=
      QtApplicationRaw.New_QApplication0(m3argc, ADR(m3argv[0]), arg3);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication0;

PROCEDURE New_QApplication1
  (self: QApplication; argc: INTEGER; READONLY argv: ARRAY OF TEXT; ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtApplicationRaw.New_QApplication1(m3argc, ADR(m3argv[0]));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication1;

PROCEDURE New_QApplication2 (         self      : QApplication;
                                      argc      : INTEGER;
                             READONLY argv      : ARRAY OF TEXT;
                                      GUIenabled: BOOLEAN;
                                      arg4      : INTEGER;       ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtApplicationRaw.New_QApplication2(
                m3argc, ADR(m3argv[0]), GUIenabled, arg4);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication2;

PROCEDURE New_QApplication3 (         self      : QApplication;
                                      argc      : INTEGER;
                             READONLY argv      : ARRAY OF TEXT;
                                      GUIenabled: BOOLEAN;       ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtApplicationRaw.New_QApplication3(
                m3argc, ADR(m3argv[0]), GUIenabled);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication3;

PROCEDURE New_QApplication4 (         self: QApplication;
                                      argc: INTEGER;
                             READONLY argv: ARRAY OF TEXT;
                                      arg3: Type;
                                      arg4: INTEGER;       ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtApplicationRaw.New_QApplication4(
                m3argc, ADR(m3argv[0]), ORD(arg3), arg4);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication4;

PROCEDURE New_QApplication5 (         self: QApplication;
                                      argc: INTEGER;
                             READONLY argv: ARRAY OF TEXT;
                                      arg3: Type;          ):
  QApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtApplicationRaw.New_QApplication5(
                m3argc, ADR(m3argv[0]), ORD(arg3));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);

    RETURN self;
  END New_QApplication5;

PROCEDURE Delete_QApplication (self: QApplication; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.Delete_QApplication(selfAdr);
  END Delete_QApplication;

PROCEDURE AppType (): Type =
  VAR
    ret   : INTEGER;
    result: Type;
  BEGIN
    ret := QtApplicationRaw.AppType();
    result := VAL(ret, Type);
    RETURN result;
  END AppType;

PROCEDURE Style (): QStyle =
  VAR
    ret   : ADDRESS;
    result: QStyle;
  BEGIN
    ret := QtApplicationRaw.Style();

    result := NEW(QStyle);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Style;

PROCEDURE SetStyle (arg1: QStyle; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetStyle(arg1tmp);
  END SetStyle;

PROCEDURE SetStyle1 (arg1: TEXT; ): QStyle =
  VAR
    ret      : ADDRESS;
    result   : QStyle;
    qstr_arg1          := NEW(QString).initQString(arg1);
    arg1tmp            := LOOPHOLE(qstr_arg1.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.SetStyle1(arg1tmp);

    result := NEW(QStyle);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END SetStyle1;

PROCEDURE GetColorSpec (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.GetColorSpec();
  END GetColorSpec;

PROCEDURE SetColorSpec (arg1: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetColorSpec(arg1);
  END SetColorSpec;

PROCEDURE SetGraphicsSystem (arg1: TEXT; ) =
  VAR
    qstr_arg1 := NEW(QString).initQString(arg1);
    arg1tmp   := LOOPHOLE(qstr_arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetGraphicsSystem(arg1tmp);
  END SetGraphicsSystem;

PROCEDURE OverrideCursor (): QCursor =
  VAR
    ret   : ADDRESS;
    result: QCursor;
  BEGIN
    ret := QtApplicationRaw.OverrideCursor();

    result := NEW(QCursor);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END OverrideCursor;

PROCEDURE SetOverrideCursor (arg1: QCursor; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetOverrideCursor(arg1tmp);
  END SetOverrideCursor;

PROCEDURE ChangeOverrideCursor (arg1: QCursor; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.ChangeOverrideCursor(arg1tmp);
  END ChangeOverrideCursor;

PROCEDURE RestoreOverrideCursor () =
  BEGIN
    QtApplicationRaw.RestoreOverrideCursor();
  END RestoreOverrideCursor;

PROCEDURE Palette (): QPalette =
  VAR
    ret   : ADDRESS;
    result: QPalette;
  BEGIN
    ret := QtApplicationRaw.Palette();

    result := NEW(QPalette);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Palette;

PROCEDURE Palette1 (arg1: QWidget; ): QPalette =
  VAR
    ret    : ADDRESS;
    result : QPalette;
    arg1tmp           := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.Palette1(arg1tmp);

    result := NEW(QPalette);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Palette1;

PROCEDURE Palette2 (className: TEXT; ): QPalette =
  VAR
    ret    : ADDRESS;
    result : QPalette;
    arg1tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(className);
    ret := QtApplicationRaw.Palette2(arg1tmp);

    result := NEW(QPalette);
    result.cxxObj := ret;
    result.destroyCxx();



    RETURN result;
  END Palette2;

PROCEDURE SetPalette (arg1: QPalette; className: TEXT; ) =
  VAR
    arg1tmp              := LOOPHOLE(arg1.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(className);
    QtApplicationRaw.SetPalette(arg1tmp, arg2tmp);


  END SetPalette;

PROCEDURE SetPalette1 (arg1: QPalette; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetPalette1(arg1tmp);
  END SetPalette1;

PROCEDURE Font (): QFont =
  VAR
    ret   : ADDRESS;
    result: QFont;
  BEGIN
    ret := QtApplicationRaw.Font();

    result := NEW(QFont);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Font;

PROCEDURE Font1 (arg1: QWidget; ): QFont =
  VAR
    ret    : ADDRESS;
    result : QFont;
    arg1tmp          := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.Font1(arg1tmp);

    result := NEW(QFont);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Font1;

PROCEDURE Font2 (className: TEXT; ): QFont =
  VAR
    ret    : ADDRESS;
    result : QFont;
    arg1tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(className);
    ret := QtApplicationRaw.Font2(arg1tmp);

    result := NEW(QFont);
    result.cxxObj := ret;
    result.destroyCxx();



    RETURN result;
  END Font2;

PROCEDURE SetFont (arg1: QFont; className: TEXT; ) =
  VAR
    arg1tmp              := LOOPHOLE(arg1.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(className);
    QtApplicationRaw.SetFont(arg1tmp, arg2tmp);


  END SetFont;

PROCEDURE SetFont1 (arg1: QFont; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetFont1(arg1tmp);
  END SetFont1;

PROCEDURE FontMetrics (): QFontMetrics =
  VAR
    ret   : ADDRESS;
    result: QFontMetrics;
  BEGIN
    ret := QtApplicationRaw.FontMetrics();

    result := NEW(QFontMetrics);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FontMetrics;

PROCEDURE SetWindowIcon (icon: QIcon; ) =
  VAR arg1tmp := LOOPHOLE(icon.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetWindowIcon(arg1tmp);
  END SetWindowIcon;

PROCEDURE ActivePopupWidget (): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.ActivePopupWidget();

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END ActivePopupWidget;

PROCEDURE ActiveModalWidget (): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.ActiveModalWidget();

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END ActiveModalWidget;

PROCEDURE FocusWidget (): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.FocusWidget();

    (*IF ISTYPE(result,QWidget) AND ret = selfAdr THEN result :=
       LOOPHOLE(self,QWidget); ELSE*)
    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();
    (*END;*)

    RETURN result;
  END FocusWidget;

PROCEDURE ActiveWindow (): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.ActiveWindow();

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END ActiveWindow;

PROCEDURE SetActiveWindow (act: QWidget; ) =
  VAR arg1tmp := LOOPHOLE(act.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetActiveWindow(arg1tmp);
  END SetActiveWindow;

PROCEDURE WidgetAt (p: QPoint; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    arg1tmp          := LOOPHOLE(p.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.WidgetAt(arg1tmp);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END WidgetAt;

PROCEDURE WidgetAt1 (x, y: INTEGER; ): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.WidgetAt1(x, y);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END WidgetAt1;

PROCEDURE TopLevelAt (p: QPoint; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    arg1tmp          := LOOPHOLE(p.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.TopLevelAt(arg1tmp);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END TopLevelAt;

PROCEDURE TopLevelAt1 (x, y: INTEGER; ): QWidget =
  VAR
    ret   : ADDRESS;
    result: QWidget;
  BEGIN
    ret := QtApplicationRaw.TopLevelAt1(x, y);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END TopLevelAt1;

PROCEDURE SyncX () =
  BEGIN
    QtApplicationRaw.SyncX();
  END SyncX;

PROCEDURE Beep () =
  BEGIN
    QtApplicationRaw.Beep();
  END Beep;

PROCEDURE Alert (widget: QWidget; duration: INTEGER; ) =
  VAR arg1tmp := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.Alert(arg1tmp, duration);
  END Alert;

PROCEDURE Alert1 (widget: QWidget; ) =
  VAR arg1tmp := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.Alert1(arg1tmp);
  END Alert1;

PROCEDURE KeyboardModifiers (): KeyboardModifierFlags =
  VAR
    ret   : INTEGER;
    result: KeyboardModifierFlags;
  BEGIN
    ret := QtApplicationRaw.KeyboardModifiers();
    result := VAL(ret, KeyboardModifierFlags);
    RETURN result;
  END KeyboardModifiers;

PROCEDURE MouseButtons (): MouseButtonFlags =
  VAR
    ret   : INTEGER;
    result: MouseButtonFlags;
  BEGIN
    ret := QtApplicationRaw.MouseButtons();
    result := VAL(ret, MouseButtonFlags);
    RETURN result;
  END MouseButtons;

PROCEDURE SetDesktopSettingsAware (arg1: BOOLEAN; ) =
  BEGIN
    QtApplicationRaw.SetDesktopSettingsAware(arg1);
  END SetDesktopSettingsAware;

PROCEDURE DesktopSettingsAware (): BOOLEAN =
  BEGIN
    RETURN QtApplicationRaw.DesktopSettingsAware();
  END DesktopSettingsAware;

PROCEDURE SetCursorFlashTime (arg1: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetCursorFlashTime(arg1);
  END SetCursorFlashTime;

PROCEDURE CursorFlashTime (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.CursorFlashTime();
  END CursorFlashTime;

PROCEDURE SetDoubleClickInterval (arg1: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetDoubleClickInterval(arg1);
  END SetDoubleClickInterval;

PROCEDURE DoubleClickInterval (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.DoubleClickInterval();
  END DoubleClickInterval;

PROCEDURE SetKeyboardInputInterval (arg1: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetKeyboardInputInterval(arg1);
  END SetKeyboardInputInterval;

PROCEDURE KeyboardInputInterval (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.KeyboardInputInterval();
  END KeyboardInputInterval;

PROCEDURE SetWheelScrollLines (arg1: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetWheelScrollLines(arg1);
  END SetWheelScrollLines;

PROCEDURE WheelScrollLines (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.WheelScrollLines();
  END WheelScrollLines;

PROCEDURE SetGlobalStrut (arg1: QSize; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.SetGlobalStrut(arg1tmp);
  END SetGlobalStrut;

PROCEDURE GlobalStrut (): QSize =
  VAR
    ret   : ADDRESS;
    result: QSize;
  BEGIN
    ret := QtApplicationRaw.GlobalStrut();

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END GlobalStrut;

PROCEDURE SetStartDragTime (ms: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetStartDragTime(ms);
  END SetStartDragTime;

PROCEDURE StartDragTime (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.StartDragTime();
  END StartDragTime;

PROCEDURE SetStartDragDistance (l: INTEGER; ) =
  BEGIN
    QtApplicationRaw.SetStartDragDistance(l);
  END SetStartDragDistance;

PROCEDURE StartDragDistance (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.StartDragDistance();
  END StartDragDistance;

PROCEDURE SetLayoutDirection (direction: LayoutDirection; ) =
  BEGIN
    QtApplicationRaw.SetLayoutDirection(ORD(direction));
  END SetLayoutDirection;

PROCEDURE AppLayoutDirection (): LayoutDirection =
  VAR
    ret   : INTEGER;
    result: LayoutDirection;
  BEGIN
    ret := QtApplicationRaw.AppLayoutDirection();
    result := VAL(ret, LayoutDirection);
    RETURN result;
  END AppLayoutDirection;

PROCEDURE IsRightToLeft (): BOOLEAN =
  BEGIN
    RETURN QtApplicationRaw.IsRightToLeft();
  END IsRightToLeft;

PROCEDURE IsLeftToRight (): BOOLEAN =
  BEGIN
    RETURN QtApplicationRaw.IsLeftToRight();
  END IsLeftToRight;

PROCEDURE IsEffectEnabled (arg1: UIEffect; ): BOOLEAN =
  BEGIN
    RETURN QtApplicationRaw.IsEffectEnabled(ORD(arg1));
  END IsEffectEnabled;

PROCEDURE SetEffectEnabled (arg1: UIEffect; enable: BOOLEAN; ) =
  BEGIN
    QtApplicationRaw.SetEffectEnabled(ORD(arg1), enable);
  END SetEffectEnabled;

PROCEDURE SetEffectEnabled1 (arg1: UIEffect; ) =
  BEGIN
    QtApplicationRaw.SetEffectEnabled1(ORD(arg1));
  END SetEffectEnabled1;

PROCEDURE QApplication_isSessionRestored (self: QApplication; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtApplicationRaw.QApplication_isSessionRestored(selfAdr);
  END QApplication_isSessionRestored;

PROCEDURE QApplication_sessionId (self: QApplication; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.QApplication_sessionId(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QApplication_sessionId;

PROCEDURE QApplication_sessionKey (self: QApplication; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.QApplication_sessionKey(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QApplication_sessionKey;

PROCEDURE QApplication_setInputContext
  (self: QApplication; arg2: QInputContext; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.QApplication_setInputContext(selfAdr, arg2tmp);
  END QApplication_setInputContext;

PROCEDURE QApplication_inputContext (self: QApplication; ): QInputContext =
  VAR
    ret    : ADDRESS;
    result : QInputContext;
    selfAdr: ADDRESS       := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.QApplication_inputContext(selfAdr);

    result := NEW(QInputContext);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QApplication_inputContext;

PROCEDURE KeyboardInputDirection (): LayoutDirection =
  VAR
    ret   : INTEGER;
    result: LayoutDirection;
  BEGIN
    ret := QtApplicationRaw.KeyboardInputDirection();
    result := VAL(ret, LayoutDirection);
    RETURN result;
  END KeyboardInputDirection;

PROCEDURE Exec (): INTEGER =
  BEGIN
    RETURN QtApplicationRaw.Exec();
  END Exec;

PROCEDURE SetQuitOnLastWindowClosed (quit: BOOLEAN; ) =
  BEGIN
    QtApplicationRaw.SetQuitOnLastWindowClosed(quit);
  END SetQuitOnLastWindowClosed;

PROCEDURE QuitOnLastWindowClosed (): BOOLEAN =
  BEGIN
    RETURN QtApplicationRaw.QuitOnLastWindowClosed();
  END QuitOnLastWindowClosed;

PROCEDURE QApplication_styleSheet (self: QApplication; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtApplicationRaw.QApplication_styleSheet(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QApplication_styleSheet;

PROCEDURE QApplication_setStyleSheet (self: QApplication; sheet: TEXT; ) =
  VAR
    selfAdr   : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_sheet          := NEW(QString).initQString(sheet);
    arg2tmp             := LOOPHOLE(qstr_sheet.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.QApplication_setStyleSheet(selfAdr, arg2tmp);
  END QApplication_setStyleSheet;

PROCEDURE QApplication_setAutoSipEnabled
  (self: QApplication; enabled: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtApplicationRaw.QApplication_setAutoSipEnabled(selfAdr, enabled);
  END QApplication_setAutoSipEnabled;

PROCEDURE QApplication_autoSipEnabled (self: QApplication; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtApplicationRaw.QApplication_autoSipEnabled(selfAdr);
  END QApplication_autoSipEnabled;

PROCEDURE CloseAllWindows () =
  BEGIN
    QtApplicationRaw.CloseAllWindows();
  END CloseAllWindows;

PROCEDURE AboutQt () =
  BEGIN
    QtApplicationRaw.AboutQt();
  END AboutQt;

PROCEDURE Cleanup_QApplication
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QApplication := ref;
  BEGIN
    Delete_QApplication(obj);
  END Cleanup_QApplication;

PROCEDURE Destroy_QApplication (self: QApplication) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QApplication);
  END Destroy_QApplication;

REVEAL
  QApplication = QApplicationPublic BRANDED OBJECT
                 OVERRIDES
                   init_0            := New_QApplication0;
                   init_1            := New_QApplication1;
                   init_2            := New_QApplication2;
                   init_3            := New_QApplication3;
                   init_4            := New_QApplication4;
                   init_5            := New_QApplication5;
                   isSessionRestored := QApplication_isSessionRestored;
                   sessionId         := QApplication_sessionId;
                   sessionKey        := QApplication_sessionKey;
                   setInputContext   := QApplication_setInputContext;
                   inputContext      := QApplication_inputContext;
                   styleSheet        := QApplication_styleSheet;
                   setStyleSheet     := QApplication_setStyleSheet;
                   setAutoSipEnabled := QApplication_setAutoSipEnabled;
                   autoSipEnabled    := QApplication_autoSipEnabled;
                   destroyCxx        := Destroy_QApplication;
                 END;


BEGIN
END QtApplication.

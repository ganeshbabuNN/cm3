(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtDesktopWidget;


IMPORT QtDesktopWidgetRaw;
FROM QtWidget IMPORT QWidget;
FROM QtPoint IMPORT QPoint;
FROM QtRect IMPORT QRect;


IMPORT WeakRef;

PROCEDURE New_QDesktopWidget0 (self: QDesktopWidget; ): QDesktopWidget =
  VAR result: ADDRESS;
  BEGIN
    result := QtDesktopWidgetRaw.New_QDesktopWidget0();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDesktopWidget);

    RETURN self;
  END New_QDesktopWidget0;

PROCEDURE Delete_QDesktopWidget (self: QDesktopWidget; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDesktopWidgetRaw.Delete_QDesktopWidget(selfAdr);
  END Delete_QDesktopWidget;

PROCEDURE QDesktopWidget_isVirtualDesktop (self: QDesktopWidget; ):
  BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDesktopWidgetRaw.QDesktopWidget_isVirtualDesktop(selfAdr);
  END QDesktopWidget_isVirtualDesktop;

PROCEDURE QDesktopWidget_numScreens (self: QDesktopWidget; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDesktopWidgetRaw.QDesktopWidget_numScreens(selfAdr);
  END QDesktopWidget_numScreens;

PROCEDURE QDesktopWidget_screenCount (self: QDesktopWidget; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDesktopWidgetRaw.QDesktopWidget_screenCount(selfAdr);
  END QDesktopWidget_screenCount;

PROCEDURE QDesktopWidget_primaryScreen (self: QDesktopWidget; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDesktopWidgetRaw.QDesktopWidget_primaryScreen(selfAdr);
  END QDesktopWidget_primaryScreen;

PROCEDURE QDesktopWidget_screenNumber
  (self: QDesktopWidget; widget: QWidget; ): INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    RETURN
      QtDesktopWidgetRaw.QDesktopWidget_screenNumber(selfAdr, arg2tmp);
  END QDesktopWidget_screenNumber;

PROCEDURE QDesktopWidget_screenNumber1 (self: QDesktopWidget; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDesktopWidgetRaw.QDesktopWidget_screenNumber1(selfAdr);
  END QDesktopWidget_screenNumber1;

PROCEDURE QDesktopWidget_screenNumber2
  (self: QDesktopWidget; arg2: QPoint; ): INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    RETURN
      QtDesktopWidgetRaw.QDesktopWidget_screenNumber2(selfAdr, arg2tmp);
  END QDesktopWidget_screenNumber2;

PROCEDURE QDesktopWidget_screen (self: QDesktopWidget; screen: INTEGER; ):
  QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_screen(selfAdr, screen);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screen;

PROCEDURE QDesktopWidget_screen1 (self: QDesktopWidget; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_screen1(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screen1;

PROCEDURE QDesktopWidget_screenGeometry
  (self: QDesktopWidget; screen: INTEGER; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtDesktopWidgetRaw.QDesktopWidget_screenGeometry(selfAdr, screen);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screenGeometry;

PROCEDURE QDesktopWidget_screenGeometry1 (self: QDesktopWidget; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_screenGeometry1(selfAdr);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screenGeometry1;

PROCEDURE QDesktopWidget_screenGeometry2
  (self: QDesktopWidget; widget: QWidget; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtDesktopWidgetRaw.QDesktopWidget_screenGeometry2(selfAdr, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screenGeometry2;

PROCEDURE QDesktopWidget_screenGeometry3
  (self: QDesktopWidget; point: QPoint; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(point.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtDesktopWidgetRaw.QDesktopWidget_screenGeometry3(selfAdr, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_screenGeometry3;

PROCEDURE QDesktopWidget_availableGeometry
  (self: QDesktopWidget; screen: INTEGER; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtDesktopWidgetRaw.QDesktopWidget_availableGeometry(selfAdr, screen);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_availableGeometry;

PROCEDURE QDesktopWidget_availableGeometry1 (self: QDesktopWidget; ):
  QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_availableGeometry1(selfAdr);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_availableGeometry1;

PROCEDURE QDesktopWidget_availableGeometry2
  (self: QDesktopWidget; widget: QWidget; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_availableGeometry2(
             selfAdr, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_availableGeometry2;

PROCEDURE QDesktopWidget_availableGeometry3
  (self: QDesktopWidget; point: QPoint; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(point.cxxObj, ADDRESS);
  BEGIN
    ret := QtDesktopWidgetRaw.QDesktopWidget_availableGeometry3(
             selfAdr, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDesktopWidget_availableGeometry3;

PROCEDURE Cleanup_QDesktopWidget
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QDesktopWidget := ref;
  BEGIN
    Delete_QDesktopWidget(obj);
  END Cleanup_QDesktopWidget;

PROCEDURE Destroy_QDesktopWidget (self: QDesktopWidget) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QDesktopWidget);
  END Destroy_QDesktopWidget;

REVEAL
  QDesktopWidget =
    QDesktopWidgetPublic BRANDED OBJECT
    OVERRIDES
      init_0             := New_QDesktopWidget0;
      isVirtualDesktop   := QDesktopWidget_isVirtualDesktop;
      numScreens         := QDesktopWidget_numScreens;
      screenCount        := QDesktopWidget_screenCount;
      primaryScreen      := QDesktopWidget_primaryScreen;
      screenNumber       := QDesktopWidget_screenNumber;
      screenNumber1      := QDesktopWidget_screenNumber1;
      screenNumber2      := QDesktopWidget_screenNumber2;
      screen             := QDesktopWidget_screen;
      screen1            := QDesktopWidget_screen1;
      screenGeometry     := QDesktopWidget_screenGeometry;
      screenGeometry1    := QDesktopWidget_screenGeometry1;
      screenGeometry2    := QDesktopWidget_screenGeometry2;
      screenGeometry3    := QDesktopWidget_screenGeometry3;
      availableGeometry  := QDesktopWidget_availableGeometry;
      availableGeometry1 := QDesktopWidget_availableGeometry1;
      availableGeometry2 := QDesktopWidget_availableGeometry2;
      availableGeometry3 := QDesktopWidget_availableGeometry3;
      destroyCxx         := Destroy_QDesktopWidget;
    END;


BEGIN
END QtDesktopWidget.

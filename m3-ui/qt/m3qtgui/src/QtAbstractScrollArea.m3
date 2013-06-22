(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtAbstractScrollArea;


FROM QtScrollBar IMPORT QScrollBar;
FROM QtSize IMPORT QSize;
FROM QGuiStubs IMPORT QWidgetList;
IMPORT QtAbstractScrollAreaRaw;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT ScrollBarPolicy, AlignmentFlag;


IMPORT WeakRef;

PROCEDURE New_QAbstractScrollArea0
  (self: QAbstractScrollArea; parent: QWidget; ): QAbstractScrollArea =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtAbstractScrollAreaRaw.New_QAbstractScrollArea0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QAbstractScrollArea);

    RETURN self;
  END New_QAbstractScrollArea0;

PROCEDURE New_QAbstractScrollArea1 (self: QAbstractScrollArea; ):
  QAbstractScrollArea =
  VAR result: ADDRESS;
  BEGIN
    result := QtAbstractScrollAreaRaw.New_QAbstractScrollArea1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QAbstractScrollArea);

    RETURN self;
  END New_QAbstractScrollArea1;

PROCEDURE Delete_QAbstractScrollArea (self: QAbstractScrollArea; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.Delete_QAbstractScrollArea(selfAdr);
  END Delete_QAbstractScrollArea;

PROCEDURE QAbstractScrollArea_verticalScrollBarPolicy
  (self: QAbstractScrollArea; ): ScrollBarPolicy =
  VAR
    ret    : INTEGER;
    result : ScrollBarPolicy;
    selfAdr: ADDRESS         := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtAbstractScrollAreaRaw.QAbstractScrollArea_verticalScrollBarPolicy(
        selfAdr);
    result := VAL(ret, ScrollBarPolicy);
    RETURN result;
  END QAbstractScrollArea_verticalScrollBarPolicy;

PROCEDURE QAbstractScrollArea_setVerticalScrollBarPolicy
  (self: QAbstractScrollArea; arg2: ScrollBarPolicy; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setVerticalScrollBarPolicy(
      selfAdr, ORD(arg2));
  END QAbstractScrollArea_setVerticalScrollBarPolicy;

PROCEDURE QAbstractScrollArea_verticalScrollBar
  (self: QAbstractScrollArea; ): QScrollBar =
  VAR
    ret    : ADDRESS;
    result : QScrollBar;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_verticalScrollBar(
             selfAdr);

    result := NEW(QScrollBar);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_verticalScrollBar;

PROCEDURE QAbstractScrollArea_setVerticalScrollBar
  (self: QAbstractScrollArea; scrollbar: QScrollBar; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(scrollbar.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setVerticalScrollBar(
      selfAdr, arg2tmp);
  END QAbstractScrollArea_setVerticalScrollBar;

PROCEDURE QAbstractScrollArea_horizontalScrollBarPolicy
  (self: QAbstractScrollArea; ): ScrollBarPolicy =
  VAR
    ret    : INTEGER;
    result : ScrollBarPolicy;
    selfAdr: ADDRESS         := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtAbstractScrollAreaRaw.QAbstractScrollArea_horizontalScrollBarPolicy(
        selfAdr);
    result := VAL(ret, ScrollBarPolicy);
    RETURN result;
  END QAbstractScrollArea_horizontalScrollBarPolicy;

PROCEDURE QAbstractScrollArea_setHorizontalScrollBarPolicy
  (self: QAbstractScrollArea; arg2: ScrollBarPolicy; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setHorizontalScrollBarPolicy(
      selfAdr, ORD(arg2));
  END QAbstractScrollArea_setHorizontalScrollBarPolicy;

PROCEDURE QAbstractScrollArea_horizontalScrollBar
  (self: QAbstractScrollArea; ): QScrollBar =
  VAR
    ret    : ADDRESS;
    result : QScrollBar;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_horizontalScrollBar(
             selfAdr);

    result := NEW(QScrollBar);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_horizontalScrollBar;

PROCEDURE QAbstractScrollArea_setHorizontalScrollBar
  (self: QAbstractScrollArea; scrollbar: QScrollBar; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(scrollbar.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setHorizontalScrollBar(
      selfAdr, arg2tmp);
  END QAbstractScrollArea_setHorizontalScrollBar;

PROCEDURE QAbstractScrollArea_cornerWidget (self: QAbstractScrollArea; ):
  QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtAbstractScrollAreaRaw.QAbstractScrollArea_cornerWidget(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_cornerWidget;

PROCEDURE QAbstractScrollArea_setCornerWidget
  (self: QAbstractScrollArea; widget: QWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setCornerWidget(
      selfAdr, arg2tmp);
  END QAbstractScrollArea_setCornerWidget;

PROCEDURE QAbstractScrollArea_addScrollBarWidget
  (self: QAbstractScrollArea; widget: QWidget; alignment: AlignmentFlag; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_addScrollBarWidget(
      selfAdr, arg2tmp, ORD(alignment));
  END QAbstractScrollArea_addScrollBarWidget;

PROCEDURE QAbstractScrollArea_scrollBarWidgets
  (self: QAbstractScrollArea; alignment: AlignmentFlag; ): QWidgetList =
  VAR
    ret    : ADDRESS;
    result : QWidgetList;
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_scrollBarWidgets(
             selfAdr, ORD(alignment));

    result := NEW(QWidgetList);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_scrollBarWidgets;

PROCEDURE QAbstractScrollArea_viewport (self: QAbstractScrollArea; ):
  QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_viewport(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_viewport;

PROCEDURE QAbstractScrollArea_setViewport
  (self: QAbstractScrollArea; widget: QWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtAbstractScrollAreaRaw.QAbstractScrollArea_setViewport(
      selfAdr, arg2tmp);
  END QAbstractScrollArea_setViewport;

PROCEDURE QAbstractScrollArea_maximumViewportSize
  (self: QAbstractScrollArea; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_maximumViewportSize(
             selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_maximumViewportSize;

PROCEDURE QAbstractScrollArea_minimumSizeHint
  (self: QAbstractScrollArea; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtAbstractScrollAreaRaw.QAbstractScrollArea_minimumSizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_minimumSizeHint;

PROCEDURE QAbstractScrollArea_sizeHint (self: QAbstractScrollArea; ):
  QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractScrollAreaRaw.QAbstractScrollArea_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractScrollArea_sizeHint;

PROCEDURE Cleanup_QAbstractScrollArea
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QAbstractScrollArea := ref;
  BEGIN
    Delete_QAbstractScrollArea(obj);
  END Cleanup_QAbstractScrollArea;

PROCEDURE Destroy_QAbstractScrollArea (self: QAbstractScrollArea) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QAbstractScrollArea);
  END Destroy_QAbstractScrollArea;

REVEAL
  QAbstractScrollArea =
    QAbstractScrollAreaPublic BRANDED OBJECT
    OVERRIDES
      init_0 := New_QAbstractScrollArea0;
      init_1 := New_QAbstractScrollArea1;
      verticalScrollBarPolicy := QAbstractScrollArea_verticalScrollBarPolicy;
      setVerticalScrollBarPolicy := QAbstractScrollArea_setVerticalScrollBarPolicy;
      verticalScrollBar    := QAbstractScrollArea_verticalScrollBar;
      setVerticalScrollBar := QAbstractScrollArea_setVerticalScrollBar;
      horizontalScrollBarPolicy := QAbstractScrollArea_horizontalScrollBarPolicy;
      setHorizontalScrollBarPolicy := QAbstractScrollArea_setHorizontalScrollBarPolicy;
      horizontalScrollBar    := QAbstractScrollArea_horizontalScrollBar;
      setHorizontalScrollBar := QAbstractScrollArea_setHorizontalScrollBar;
      cornerWidget           := QAbstractScrollArea_cornerWidget;
      setCornerWidget        := QAbstractScrollArea_setCornerWidget;
      addScrollBarWidget     := QAbstractScrollArea_addScrollBarWidget;
      scrollBarWidgets       := QAbstractScrollArea_scrollBarWidgets;
      viewport               := QAbstractScrollArea_viewport;
      setViewport            := QAbstractScrollArea_setViewport;
      maximumViewportSize    := QAbstractScrollArea_maximumViewportSize;
      minimumSizeHint        := QAbstractScrollArea_minimumSizeHint;
      sizeHint               := QAbstractScrollArea_sizeHint;
      destroyCxx             := Destroy_QAbstractScrollArea;
    END;


BEGIN
END QtAbstractScrollArea.

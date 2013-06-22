(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtAbstractSlider;


IMPORT QtAbstractSliderRaw;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT Orientation;


IMPORT WeakRef;

PROCEDURE New_QAbstractSlider0 (self:QAbstractSlider; parent: QWidget;
): QAbstractSlider =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(parent.cxxObj,ADDRESS);
BEGIN
result := QtAbstractSliderRaw.New_QAbstractSlider0(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QAbstractSlider);

RETURN self;
END New_QAbstractSlider0;

PROCEDURE New_QAbstractSlider1 (self:QAbstractSlider;): QAbstractSlider =
VAR
result : ADDRESS;
BEGIN
result := QtAbstractSliderRaw.New_QAbstractSlider1();

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QAbstractSlider);

RETURN self;
END New_QAbstractSlider1;

PROCEDURE Delete_QAbstractSlider ( self: QAbstractSlider;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.Delete_QAbstractSlider(selfAdr);
END Delete_QAbstractSlider;

PROCEDURE QAbstractSlider_orientation ( self: QAbstractSlider;
): Orientation =
VAR
ret:INTEGER; result : Orientation;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtAbstractSliderRaw.QAbstractSlider_orientation(selfAdr);
result := VAL(ret,Orientation);  
RETURN result;
END QAbstractSlider_orientation;

PROCEDURE QAbstractSlider_setMinimum ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setMinimum(selfAdr, arg2);
END QAbstractSlider_setMinimum;

PROCEDURE QAbstractSlider_minimum ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_minimum(selfAdr);
END QAbstractSlider_minimum;

PROCEDURE QAbstractSlider_setMaximum ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setMaximum(selfAdr, arg2);
END QAbstractSlider_setMaximum;

PROCEDURE QAbstractSlider_maximum ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_maximum(selfAdr);
END QAbstractSlider_maximum;

PROCEDURE QAbstractSlider_setRange ( self: QAbstractSlider;
min, max: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setRange(selfAdr, min, max);
END QAbstractSlider_setRange;

PROCEDURE QAbstractSlider_setSingleStep ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setSingleStep(selfAdr, arg2);
END QAbstractSlider_setSingleStep;

PROCEDURE QAbstractSlider_singleStep ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_singleStep(selfAdr);
END QAbstractSlider_singleStep;

PROCEDURE QAbstractSlider_setPageStep ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setPageStep(selfAdr, arg2);
END QAbstractSlider_setPageStep;

PROCEDURE QAbstractSlider_pageStep ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_pageStep(selfAdr);
END QAbstractSlider_pageStep;

PROCEDURE QAbstractSlider_setTracking ( self: QAbstractSlider;
enable: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setTracking(selfAdr, enable);
END QAbstractSlider_setTracking;

PROCEDURE QAbstractSlider_hasTracking ( self: QAbstractSlider;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_hasTracking(selfAdr);
END QAbstractSlider_hasTracking;

PROCEDURE QAbstractSlider_setSliderDown ( self: QAbstractSlider;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setSliderDown(selfAdr, arg2);
END QAbstractSlider_setSliderDown;

PROCEDURE QAbstractSlider_isSliderDown ( self: QAbstractSlider;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_isSliderDown(selfAdr);
END QAbstractSlider_isSliderDown;

PROCEDURE QAbstractSlider_setSliderPosition ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setSliderPosition(selfAdr, arg2);
END QAbstractSlider_setSliderPosition;

PROCEDURE QAbstractSlider_sliderPosition ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_sliderPosition(selfAdr);
END QAbstractSlider_sliderPosition;

PROCEDURE QAbstractSlider_setInvertedAppearance ( self: QAbstractSlider;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setInvertedAppearance(selfAdr, arg2);
END QAbstractSlider_setInvertedAppearance;

PROCEDURE QAbstractSlider_invertedAppearance ( self: QAbstractSlider;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_invertedAppearance(selfAdr);
END QAbstractSlider_invertedAppearance;

PROCEDURE QAbstractSlider_setInvertedControls ( self: QAbstractSlider;
arg2: BOOLEAN;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setInvertedControls(selfAdr, arg2);
END QAbstractSlider_setInvertedControls;

PROCEDURE QAbstractSlider_invertedControls ( self: QAbstractSlider;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_invertedControls(selfAdr);
END QAbstractSlider_invertedControls;

PROCEDURE QAbstractSlider_value ( self: QAbstractSlider;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtAbstractSliderRaw.QAbstractSlider_value(selfAdr);
END QAbstractSlider_value;

PROCEDURE QAbstractSlider_triggerAction ( self: QAbstractSlider;
action: SliderAction;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_triggerAction(selfAdr, ORD(action));
END QAbstractSlider_triggerAction;

PROCEDURE QAbstractSlider_setValue ( self: QAbstractSlider;
arg2: INTEGER;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setValue(selfAdr, arg2);
END QAbstractSlider_setValue;

PROCEDURE QAbstractSlider_setOrientation ( self: QAbstractSlider;
arg2: Orientation;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtAbstractSliderRaw.QAbstractSlider_setOrientation(selfAdr, ORD(arg2));
END QAbstractSlider_setOrientation;

PROCEDURE Cleanup_QAbstractSlider(<*UNUSED*>READONLY self: WeakRef.T; ref: REFANY) =
VAR obj : QAbstractSlider := ref;
BEGIN
  Delete_QAbstractSlider(obj);
 END Cleanup_QAbstractSlider;

PROCEDURE Destroy_QAbstractSlider(self : QAbstractSlider) =
BEGIN
  EVAL WeakRef.FromRef(self,Cleanup_QAbstractSlider);
END Destroy_QAbstractSlider;

REVEAL
QAbstractSlider =
QAbstractSliderPublic BRANDED OBJECT
OVERRIDES
init_0 := New_QAbstractSlider0;
init_1 := New_QAbstractSlider1;
orientation := QAbstractSlider_orientation;
setMinimum := QAbstractSlider_setMinimum;
minimum := QAbstractSlider_minimum;
setMaximum := QAbstractSlider_setMaximum;
maximum := QAbstractSlider_maximum;
setRange := QAbstractSlider_setRange;
setSingleStep := QAbstractSlider_setSingleStep;
singleStep := QAbstractSlider_singleStep;
setPageStep := QAbstractSlider_setPageStep;
pageStep := QAbstractSlider_pageStep;
setTracking := QAbstractSlider_setTracking;
hasTracking := QAbstractSlider_hasTracking;
setSliderDown := QAbstractSlider_setSliderDown;
isSliderDown := QAbstractSlider_isSliderDown;
setSliderPosition := QAbstractSlider_setSliderPosition;
sliderPosition := QAbstractSlider_sliderPosition;
setInvertedAppearance := QAbstractSlider_setInvertedAppearance;
invertedAppearance := QAbstractSlider_invertedAppearance;
setInvertedControls := QAbstractSlider_setInvertedControls;
invertedControls := QAbstractSlider_invertedControls;
value := QAbstractSlider_value;
triggerAction := QAbstractSlider_triggerAction;
setValue := QAbstractSlider_setValue;
setOrientation := QAbstractSlider_setOrientation;
destroyCxx := Destroy_QAbstractSlider;
END;


BEGIN
END QtAbstractSlider.

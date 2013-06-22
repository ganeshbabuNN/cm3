(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtPalette;


IMPORT QtPaletteRaw;
FROM QtColor IMPORT QColor;
FROM QtBrush IMPORT QBrush;
FROM QtNamespace IMPORT GlobalColor;


IMPORT WeakRef;

PROCEDURE New_QPalette0 (self:QPalette;): QPalette =
VAR
result : ADDRESS;
BEGIN
result := QtPaletteRaw.New_QPalette0();

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette0;

PROCEDURE New_QPalette1 (self:QPalette; button: QColor;
): QPalette =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(button.cxxObj,ADDRESS);
BEGIN
result := QtPaletteRaw.New_QPalette1(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette1;

PROCEDURE New_QPalette2 (self:QPalette;button: GlobalColor;
): QPalette =
VAR
result : ADDRESS;
BEGIN
result := QtPaletteRaw.New_QPalette2(ORD(button));

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette2;

PROCEDURE New_QPalette3 (self:QPalette; button, window: QColor;
): QPalette =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(button.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(window.cxxObj,ADDRESS);
BEGIN
result := QtPaletteRaw.New_QPalette3(arg1tmp, arg2tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette3;

PROCEDURE New_QPalette4 (self:QPalette; windowText, button, light, dark, mid, text, bright_text, base, window: QBrush;
): QPalette =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(windowText.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(button.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(light.cxxObj,ADDRESS);
arg4tmp :=  LOOPHOLE(dark.cxxObj,ADDRESS);
arg5tmp :=  LOOPHOLE(mid.cxxObj,ADDRESS);
arg6tmp :=  LOOPHOLE(text.cxxObj,ADDRESS);
arg7tmp :=  LOOPHOLE(bright_text.cxxObj,ADDRESS);
arg8tmp :=  LOOPHOLE(base.cxxObj,ADDRESS);
arg9tmp :=  LOOPHOLE(window.cxxObj,ADDRESS);
BEGIN
result := QtPaletteRaw.New_QPalette4(arg1tmp, arg2tmp, arg3tmp, arg4tmp, arg5tmp, arg6tmp, arg7tmp, arg8tmp, arg9tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette4;

PROCEDURE New_QPalette5 (self:QPalette; windowText, window, light, dark, mid, text, base: QColor;
): QPalette =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(windowText.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(window.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(light.cxxObj,ADDRESS);
arg4tmp :=  LOOPHOLE(dark.cxxObj,ADDRESS);
arg5tmp :=  LOOPHOLE(mid.cxxObj,ADDRESS);
arg6tmp :=  LOOPHOLE(text.cxxObj,ADDRESS);
arg7tmp :=  LOOPHOLE(base.cxxObj,ADDRESS);
BEGIN
result := QtPaletteRaw.New_QPalette5(arg1tmp, arg2tmp, arg3tmp, arg4tmp, arg5tmp, arg6tmp, arg7tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette5;

PROCEDURE New_QPalette6 (self:QPalette; palette: QPalette;
): QPalette =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(palette.cxxObj,ADDRESS);
BEGIN
result := QtPaletteRaw.New_QPalette6(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);

RETURN self;
END New_QPalette6;

PROCEDURE Delete_QPalette ( self: QPalette;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.Delete_QPalette(selfAdr);
END Delete_QPalette;

PROCEDURE QPalette_Op_Brush_Assign ( self, palette: QPalette;
): QPalette =
VAR
ret:ADDRESS; result : QPalette;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(palette.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_Op_Brush_Assign(selfAdr, arg2tmp);

IF ISTYPE(result,QPalette) AND ret = selfAdr THEN
  result := LOOPHOLE(self,QPalette);
ELSE
  result := NEW(QPalette);
  result.cxxObj := ret;
  result.destroyCxx();
END;

RETURN result;
END QPalette_Op_Brush_Assign;

PROCEDURE QPalette_currentColorGroup ( self: QPalette;
): ColorGroup =
VAR
ret:INTEGER; result : ColorGroup;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_currentColorGroup(selfAdr);
result := VAL(ret,ColorGroup);  
RETURN result;
END QPalette_currentColorGroup;

PROCEDURE QPalette_setCurrentColorGroup ( self: QPalette;
cg: ColorGroup;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setCurrentColorGroup(selfAdr, ORD(cg));
END QPalette_setCurrentColorGroup;

PROCEDURE QPalette_color ( self: QPalette;
cg: ColorGroup;
cr: ColorRole;
): QColor =
VAR
ret:ADDRESS; result : QColor;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_color(selfAdr, ORD(cg), ORD(cr));

  result := NEW(QColor);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_color;

PROCEDURE QPalette_brush ( self: QPalette;
cg: ColorGroup;
cr: ColorRole;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_brush(selfAdr, ORD(cg), ORD(cr));

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_brush;

PROCEDURE QPalette_setColor ( self: QPalette;
cg: ColorGroup;
cr: ColorRole;
 color: QColor;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg4tmp :=  LOOPHOLE(color.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setColor(selfAdr, ORD(cg), ORD(cr), arg4tmp);
END QPalette_setColor;

PROCEDURE QPalette_setColor1 ( self: QPalette;
cr: ColorRole;
 color: QColor;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(color.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setColor1(selfAdr, ORD(cr), arg3tmp);
END QPalette_setColor1;

PROCEDURE QPalette_setBrush ( self: QPalette;
cr: ColorRole;
 brush: QBrush;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(brush.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setBrush(selfAdr, ORD(cr), arg3tmp);
END QPalette_setBrush;

PROCEDURE QPalette_isBrushSet ( self: QPalette;
cg: ColorGroup;
cr: ColorRole;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_isBrushSet(selfAdr, ORD(cg), ORD(cr));
END QPalette_isBrushSet;

PROCEDURE QPalette_setBrush1 ( self: QPalette;
cg: ColorGroup;
cr: ColorRole;
 brush: QBrush;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg4tmp :=  LOOPHOLE(brush.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setBrush1(selfAdr, ORD(cg), ORD(cr), arg4tmp);
END QPalette_setBrush1;

PROCEDURE QPalette_setColorGroup ( self: QPalette;
cr: ColorGroup;
 windowText, button, light, dark, mid, text, bright_text, base, window: QBrush;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(windowText.cxxObj,ADDRESS);
arg4tmp :=  LOOPHOLE(button.cxxObj,ADDRESS);
arg5tmp :=  LOOPHOLE(light.cxxObj,ADDRESS);
arg6tmp :=  LOOPHOLE(dark.cxxObj,ADDRESS);
arg7tmp :=  LOOPHOLE(mid.cxxObj,ADDRESS);
arg8tmp :=  LOOPHOLE(text.cxxObj,ADDRESS);
arg9tmp :=  LOOPHOLE(bright_text.cxxObj,ADDRESS);
arg10tmp :=  LOOPHOLE(base.cxxObj,ADDRESS);
arg11tmp :=  LOOPHOLE(window.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_setColorGroup(selfAdr, ORD(cr), arg3tmp, arg4tmp, arg5tmp, arg6tmp, arg7tmp, arg8tmp, arg9tmp, arg10tmp, arg11tmp);
END QPalette_setColorGroup;

PROCEDURE QPalette_isEqual ( self: QPalette;
cr1, cr2: ColorGroup;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_isEqual(selfAdr, ORD(cr1), ORD(cr2));
END QPalette_isEqual;

PROCEDURE QPalette_color1 ( self: QPalette;
cr: ColorRole;
): QColor =
VAR
ret:ADDRESS; result : QColor;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_color1(selfAdr, ORD(cr));

  result := NEW(QColor);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_color1;

PROCEDURE QPalette_brush1 ( self: QPalette;
cr: ColorRole;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_brush1(selfAdr, ORD(cr));

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_brush1;

PROCEDURE QPalette_foreground ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_foreground(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_foreground;

PROCEDURE QPalette_windowText ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_windowText(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_windowText;

PROCEDURE QPalette_button ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_button(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_button;

PROCEDURE QPalette_light ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_light(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_light;

PROCEDURE QPalette_dark ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_dark(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_dark;

PROCEDURE QPalette_mid ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_mid(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_mid;

PROCEDURE QPalette_text ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_text(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_text;

PROCEDURE QPalette_base ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_base(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_base;

PROCEDURE QPalette_alternateBase ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_alternateBase(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_alternateBase;

PROCEDURE QPalette_toolTipBase ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_toolTipBase(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_toolTipBase;

PROCEDURE QPalette_toolTipText ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_toolTipText(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_toolTipText;

PROCEDURE QPalette_background ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_background(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_background;

PROCEDURE QPalette_window ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_window(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_window;

PROCEDURE QPalette_midlight ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_midlight(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_midlight;

PROCEDURE QPalette_brightText ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_brightText(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_brightText;

PROCEDURE QPalette_buttonText ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_buttonText(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_buttonText;

PROCEDURE QPalette_shadow ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_shadow(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_shadow;

PROCEDURE QPalette_highlight ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_highlight(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_highlight;

PROCEDURE QPalette_highlightedText ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_highlightedText(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_highlightedText;

PROCEDURE QPalette_link ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_link(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_link;

PROCEDURE QPalette_linkVisited ( self: QPalette;
): QBrush =
VAR
ret:ADDRESS; result : QBrush;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_linkVisited(selfAdr);

  result := NEW(QBrush);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_linkVisited;

PROCEDURE QPalette_Op_Brush_Equals ( self, p: QPalette;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(p.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_Op_Brush_Equals(selfAdr, arg2tmp);
END QPalette_Op_Brush_Equals;

PROCEDURE QPalette_Op_Brush_NotEquals ( self, p: QPalette;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(p.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_Op_Brush_NotEquals(selfAdr, arg2tmp);
END QPalette_Op_Brush_NotEquals;

PROCEDURE QPalette_isCopyOf ( self, p: QPalette;
): BOOLEAN =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(p.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_isCopyOf(selfAdr, arg2tmp);
END QPalette_isCopyOf;

PROCEDURE QPalette_serialNumber ( self: QPalette;
): INTEGER =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_serialNumber(selfAdr);
END QPalette_serialNumber;

PROCEDURE QPalette_cacheKey ( self: QPalette;
): CARDINAL =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_cacheKey(selfAdr);
END QPalette_cacheKey;

PROCEDURE QPalette_resolve ( self, arg2: QPalette;
): QPalette =
VAR
ret:ADDRESS; result : QPalette;
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(arg2.cxxObj,ADDRESS);
BEGIN
ret := QtPaletteRaw.QPalette_resolve(selfAdr, arg2tmp);

  result := NEW(QPalette);
  result.cxxObj := ret;
  result.destroyCxx();

RETURN result;
END QPalette_resolve;

PROCEDURE QPalette_resolve1 ( self: QPalette;
): CARDINAL =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtPaletteRaw.QPalette_resolve1(selfAdr);
END QPalette_resolve1;

PROCEDURE QPalette_resolve2 ( self: QPalette;
mask: CARDINAL;
) =
VAR
selfAdr: ADDRESS := LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtPaletteRaw.QPalette_resolve2(selfAdr, mask);
END QPalette_resolve2;

PROCEDURE Cleanup_QPalette(<*UNUSED*>READONLY self: WeakRef.T; ref: REFANY) =
VAR obj : QPalette := ref;
BEGIN
  Delete_QPalette(obj);
 END Cleanup_QPalette;

PROCEDURE Destroy_QPalette(self : QPalette) =
BEGIN
  EVAL WeakRef.FromRef(self,Cleanup_QPalette);
END Destroy_QPalette;

REVEAL
QPalette =
QPalettePublic BRANDED OBJECT
OVERRIDES
init_0 := New_QPalette0;
init_1 := New_QPalette1;
init_2 := New_QPalette2;
init_3 := New_QPalette3;
init_4 := New_QPalette4;
init_5 := New_QPalette5;
init_6 := New_QPalette6;
Op_Brush_Assign := QPalette_Op_Brush_Assign;
currentColorGroup := QPalette_currentColorGroup;
setCurrentColorGroup := QPalette_setCurrentColorGroup;
color := QPalette_color;
brush := QPalette_brush;
setColor := QPalette_setColor;
setColor1 := QPalette_setColor1;
setBrush := QPalette_setBrush;
isBrushSet := QPalette_isBrushSet;
setBrush1 := QPalette_setBrush1;
setColorGroup := QPalette_setColorGroup;
isEqual := QPalette_isEqual;
color1 := QPalette_color1;
brush1 := QPalette_brush1;
foreground := QPalette_foreground;
windowText := QPalette_windowText;
button := QPalette_button;
light := QPalette_light;
dark := QPalette_dark;
mid := QPalette_mid;
text := QPalette_text;
base := QPalette_base;
alternateBase := QPalette_alternateBase;
toolTipBase := QPalette_toolTipBase;
toolTipText := QPalette_toolTipText;
background := QPalette_background;
window := QPalette_window;
midlight := QPalette_midlight;
brightText := QPalette_brightText;
buttonText := QPalette_buttonText;
shadow := QPalette_shadow;
highlight := QPalette_highlight;
highlightedText := QPalette_highlightedText;
link := QPalette_link;
linkVisited := QPalette_linkVisited;
Op_Brush_Equals := QPalette_Op_Brush_Equals;
Op_Brush_NotEquals := QPalette_Op_Brush_NotEquals;
isCopyOf := QPalette_isCopyOf;
serialNumber := QPalette_serialNumber;
cacheKey := QPalette_cacheKey;
resolve := QPalette_resolve;
resolve1 := QPalette_resolve1;
resolve2 := QPalette_resolve2;
destroyCxx := Destroy_QPalette;
END;


BEGIN
END QtPalette.

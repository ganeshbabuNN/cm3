(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtDial;

FROM QtSize IMPORT QSize;
FROM QtWidget IMPORT QWidget;


FROM QtAbstractSlider IMPORT QAbstractSlider;
TYPE T = QDial;


TYPE
  QDial <: QDialPublic;
  QDialPublic = QAbstractSlider BRANDED OBJECT
                METHODS
                  init_0            (parent: QWidget; ): QDial;
                  init_1            (): QDial;
                  wrapping          (): BOOLEAN;
                  notchSize         (): INTEGER;
                  setNotchTarget    (target: LONGREAL; );
                  notchTarget       (): LONGREAL;
                  notchesVisible    (): BOOLEAN;
                  sizeHint          (): QSize; (* virtual *)
                  minimumSizeHint   (): QSize; (* virtual *)
                  setNotchesVisible (visible: BOOLEAN; );
                  setWrapping       (on: BOOLEAN; );
                  destroyCxx        ();
                END;


END QtDial.

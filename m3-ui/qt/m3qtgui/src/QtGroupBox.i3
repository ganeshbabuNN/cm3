(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtGroupBox;

FROM QtSize IMPORT QSize;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT AlignmentFlag;


TYPE T = QGroupBox;


TYPE
  QGroupBox <: QGroupBoxPublic;
  QGroupBoxPublic = QWidget BRANDED OBJECT
                    METHODS
                      init_0   (parent: QWidget; ): QGroupBox;
                      init_1   (): QGroupBox;
                      init_2   (title: TEXT; parent: QWidget; ): QGroupBox;
                      init_3   (title: TEXT; ): QGroupBox;
                      title    (): TEXT;
                      setTitle (title: TEXT; );
                      alignment       (): AlignmentFlag;
                      setAlignment    (alignment: INTEGER; );
                      minimumSizeHint (): QSize; (* virtual *)
                      isFlat          (): BOOLEAN;
                      setFlat         (flat: BOOLEAN; );
                      isCheckable     (): BOOLEAN;
                      setCheckable    (checkable: BOOLEAN; );
                      isChecked       (): BOOLEAN;
                      setChecked      (checked: BOOLEAN; );
                      destroyCxx      ();
                    END;


END QtGroupBox.

(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtComboBoxRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QComboBox0 *>
PROCEDURE New_QComboBox0 (parent: ADDRESS; ): QComboBox;

<* EXTERNAL New_QComboBox1 *>
PROCEDURE New_QComboBox1 (): QComboBox;

<* EXTERNAL Delete_QComboBox *>
PROCEDURE Delete_QComboBox (self: QComboBox; );

<* EXTERNAL QComboBox_maxVisibleItems *>
PROCEDURE QComboBox_maxVisibleItems (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setMaxVisibleItems *>
PROCEDURE QComboBox_setMaxVisibleItems
  (self: QComboBox; maxItems: C.int; );

<* EXTERNAL QComboBox_count *>
PROCEDURE QComboBox_count (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setMaxCount *>
PROCEDURE QComboBox_setMaxCount (self: QComboBox; max: C.int; );

<* EXTERNAL QComboBox_maxCount *>
PROCEDURE QComboBox_maxCount (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_autoCompletion *>
PROCEDURE QComboBox_autoCompletion (self: QComboBox; ): BOOLEAN;

<* EXTERNAL QComboBox_setAutoCompletion *>
PROCEDURE QComboBox_setAutoCompletion (self: QComboBox; enable: BOOLEAN; );

<* EXTERNAL QComboBox_autoCompletionCaseSensitivity *>
PROCEDURE QComboBox_autoCompletionCaseSensitivity (self: QComboBox; ):
  C.int;

<* EXTERNAL QComboBox_setAutoCompletionCaseSensitivity *>
PROCEDURE QComboBox_setAutoCompletionCaseSensitivity
  (self: QComboBox; sensitivity: C.int; );

<* EXTERNAL QComboBox_duplicatesEnabled *>
PROCEDURE QComboBox_duplicatesEnabled (self: QComboBox; ): BOOLEAN;

<* EXTERNAL QComboBox_setDuplicatesEnabled *>
PROCEDURE QComboBox_setDuplicatesEnabled
  (self: QComboBox; enable: BOOLEAN; );

<* EXTERNAL QComboBox_setFrame *>
PROCEDURE QComboBox_setFrame (self: QComboBox; arg2: BOOLEAN; );

<* EXTERNAL QComboBox_hasFrame *>
PROCEDURE QComboBox_hasFrame (self: QComboBox; ): BOOLEAN;

<* EXTERNAL QComboBox_findText *>
PROCEDURE QComboBox_findText
  (self: QComboBox; text: ADDRESS; flags: C.int; ): C.int;

<* EXTERNAL QComboBox_findText1 *>
PROCEDURE QComboBox_findText1 (self: QComboBox; text: ADDRESS; ): C.int;

<* EXTERNAL QComboBox_findData *>
PROCEDURE QComboBox_findData
  (self: QComboBox; data: ADDRESS; role, flags: C.int; ): C.int;

<* EXTERNAL QComboBox_findData1 *>
PROCEDURE QComboBox_findData1
  (self: QComboBox; data: ADDRESS; role: C.int; ): C.int;

<* EXTERNAL QComboBox_findData2 *>
PROCEDURE QComboBox_findData2 (self: QComboBox; data: ADDRESS; ): C.int;

<* EXTERNAL QComboBox_insertPolicy *>
PROCEDURE QComboBox_insertPolicy (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setInsertPolicy *>
PROCEDURE QComboBox_setInsertPolicy (self: QComboBox; policy: C.int; );

<* EXTERNAL QComboBox_sizeAdjustPolicy *>
PROCEDURE QComboBox_sizeAdjustPolicy (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setSizeAdjustPolicy *>
PROCEDURE QComboBox_setSizeAdjustPolicy (self: QComboBox; policy: C.int; );

<* EXTERNAL QComboBox_minimumContentsLength *>
PROCEDURE QComboBox_minimumContentsLength (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setMinimumContentsLength *>
PROCEDURE QComboBox_setMinimumContentsLength
  (self: QComboBox; characters: C.int; );

<* EXTERNAL QComboBox_iconSize *>
PROCEDURE QComboBox_iconSize (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setIconSize *>
PROCEDURE QComboBox_setIconSize (self: QComboBox; size: ADDRESS; );

<* EXTERNAL QComboBox_isEditable *>
PROCEDURE QComboBox_isEditable (self: QComboBox; ): BOOLEAN;

<* EXTERNAL QComboBox_setEditable *>
PROCEDURE QComboBox_setEditable (self: QComboBox; editable: BOOLEAN; );

<* EXTERNAL QComboBox_setLineEdit *>
PROCEDURE QComboBox_setLineEdit (self: QComboBox; edit: ADDRESS; );

<* EXTERNAL QComboBox_lineEdit *>
PROCEDURE QComboBox_lineEdit (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setValidator *>
PROCEDURE QComboBox_setValidator (self: QComboBox; v: ADDRESS; );

<* EXTERNAL QComboBox_validator *>
PROCEDURE QComboBox_validator (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setCompleter *>
PROCEDURE QComboBox_setCompleter (self: QComboBox; c: ADDRESS; );

<* EXTERNAL QComboBox_completer *>
PROCEDURE QComboBox_completer (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_itemDelegate *>
PROCEDURE QComboBox_itemDelegate (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setItemDelegate *>
PROCEDURE QComboBox_setItemDelegate (self: QComboBox; delegate: ADDRESS; );

<* EXTERNAL QComboBox_model *>
PROCEDURE QComboBox_model (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setModel *>
PROCEDURE QComboBox_setModel (self: QComboBox; model: ADDRESS; );

<* EXTERNAL QComboBox_rootModelIndex *>
PROCEDURE QComboBox_rootModelIndex (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setRootModelIndex *>
PROCEDURE QComboBox_setRootModelIndex (self: QComboBox; index: ADDRESS; );

<* EXTERNAL QComboBox_modelColumn *>
PROCEDURE QComboBox_modelColumn (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_setModelColumn *>
PROCEDURE QComboBox_setModelColumn
  (self: QComboBox; visibleColumn: C.int; );

<* EXTERNAL QComboBox_currentIndex *>
PROCEDURE QComboBox_currentIndex (self: QComboBox; ): C.int;

<* EXTERNAL QComboBox_currentText *>
PROCEDURE QComboBox_currentText (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_itemText *>
PROCEDURE QComboBox_itemText (self: QComboBox; index: C.int; ): ADDRESS;

<* EXTERNAL QComboBox_itemIcon *>
PROCEDURE QComboBox_itemIcon (self: QComboBox; index: C.int; ): ADDRESS;

<* EXTERNAL QComboBox_itemData *>
PROCEDURE QComboBox_itemData (self: QComboBox; index, role: C.int; ):
  ADDRESS;

<* EXTERNAL QComboBox_itemData1 *>
PROCEDURE QComboBox_itemData1 (self: QComboBox; index: C.int; ): ADDRESS;

<* EXTERNAL QComboBox_addItem *>
PROCEDURE QComboBox_addItem (self: QComboBox; text, userData: ADDRESS; );

<* EXTERNAL QComboBox_addItem1 *>
PROCEDURE QComboBox_addItem1 (self: QComboBox; text: ADDRESS; );

<* EXTERNAL QComboBox_addItem2 *>
PROCEDURE QComboBox_addItem2
  (self: QComboBox; icon, text, userData: ADDRESS; );

<* EXTERNAL QComboBox_addItem3 *>
PROCEDURE QComboBox_addItem3 (self: QComboBox; icon, text: ADDRESS; );

<* EXTERNAL QComboBox_addItems *>
PROCEDURE QComboBox_addItems (self: QComboBox; texts: ADDRESS; );

<* EXTERNAL QComboBox_insertItem *>
PROCEDURE QComboBox_insertItem
  (self: QComboBox; index: C.int; text, userData: ADDRESS; );

<* EXTERNAL QComboBox_insertItem1 *>
PROCEDURE QComboBox_insertItem1
  (self: QComboBox; index: C.int; text: ADDRESS; );

<* EXTERNAL QComboBox_insertItem2 *>
PROCEDURE QComboBox_insertItem2
  (self: QComboBox; index: C.int; icon, text, userData: ADDRESS; );

<* EXTERNAL QComboBox_insertItem3 *>
PROCEDURE QComboBox_insertItem3
  (self: QComboBox; index: C.int; icon, text: ADDRESS; );

<* EXTERNAL QComboBox_insertItems *>
PROCEDURE QComboBox_insertItems
  (self: QComboBox; index: C.int; texts: ADDRESS; );

<* EXTERNAL QComboBox_insertSeparator *>
PROCEDURE QComboBox_insertSeparator (self: QComboBox; index: C.int; );

<* EXTERNAL QComboBox_removeItem *>
PROCEDURE QComboBox_removeItem (self: QComboBox; index: C.int; );

<* EXTERNAL QComboBox_setItemText *>
PROCEDURE QComboBox_setItemText
  (self: QComboBox; index: C.int; text: ADDRESS; );

<* EXTERNAL QComboBox_setItemIcon *>
PROCEDURE QComboBox_setItemIcon
  (self: QComboBox; index: C.int; icon: ADDRESS; );

<* EXTERNAL QComboBox_setItemData *>
PROCEDURE QComboBox_setItemData
  (self: QComboBox; index: C.int; value: ADDRESS; role: C.int; );

<* EXTERNAL QComboBox_setItemData1 *>
PROCEDURE QComboBox_setItemData1
  (self: QComboBox; index: C.int; value: ADDRESS; );

<* EXTERNAL QComboBox_view *>
PROCEDURE QComboBox_view (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_setView *>
PROCEDURE QComboBox_setView (self: QComboBox; itemView: ADDRESS; );

<* EXTERNAL QComboBox_sizeHint *>
PROCEDURE QComboBox_sizeHint (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_minimumSizeHint *>
PROCEDURE QComboBox_minimumSizeHint (self: QComboBox; ): ADDRESS;

<* EXTERNAL QComboBox_showPopup *>
PROCEDURE QComboBox_showPopup (self: QComboBox; );

<* EXTERNAL QComboBox_hidePopup *>
PROCEDURE QComboBox_hidePopup (self: QComboBox; );

<* EXTERNAL QComboBox_clear *>
PROCEDURE QComboBox_clear (self: QComboBox; );

<* EXTERNAL QComboBox_clearEditText *>
PROCEDURE QComboBox_clearEditText (self: QComboBox; );

<* EXTERNAL QComboBox_setEditText *>
PROCEDURE QComboBox_setEditText (self: QComboBox; text: ADDRESS; );

<* EXTERNAL QComboBox_setCurrentIndex *>
PROCEDURE QComboBox_setCurrentIndex (self: QComboBox; index: C.int; );

TYPE QComboBox = ADDRESS;

END QtComboBoxRaw.

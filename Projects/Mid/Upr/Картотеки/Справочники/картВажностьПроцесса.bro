﻿[Options]
Version=7
Query=Control.Ref.TaskImportance
HierarchicalField=Name
CanEdit=0
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Code
CanInplace=1
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=2
Column:0=Code
Column:1=Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=155
OnDraw=Поле_ПриРисовании

[Options]
Version=7
Query=Biz.Ref.CFR
HierarchicalField=Name
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=4
Column:0=Name
Column:1=Code
Column:2=Комментарий
Column:3=IsMeta
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Name]
Caption=Наименование
Width=196
OnDraw=Поле_ПриРисовании

[.Column.Code]
Caption=Код
Width=110
OnDraw=Поле_ПриРисовании

[.Column.Комментарий]
Caption=Комментарий
Width=0
OnDraw=Поле_ПриРисовании

[.Column.IsMeta]
Caption=Элемент СБ
Width=77
Alignment=2
ColumnFormat=4
OnDraw=Поле_ПриРисовании

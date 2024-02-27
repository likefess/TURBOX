[Options]
Version=7
Query=Biz.Ref.BGI
MBlank=.Справочники.редСБК
HBlank=.Справочники.редСБК
HierarchicalField=Name
Hierarchical=1
CanCopy=1
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=5
Column:0=Name
Column:1=Code
Column:2=Комментарий
Column:3=IsMeta
Column:4=ПеременныеЗатраты
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
OnValidate=Код_ПриПроверке
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

[.Column.ПеременныеЗатраты]
Caption=Перем
Width=45
Alignment=2
ColumnFormat=4
OnDraw=Поле_ПриРисовании

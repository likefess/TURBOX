[Options]
Version=7
Query=.Справочники.СтатусДвижения
MBlank=.Справочники.редСтатус
HierarchicalField=Name
OnMove=картотека_ПриПеремещении
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Name-
CanCopy=1
OnClick=КартотекаСтатусов_ПриНажатии
OnDrawRow=картотека_ПриРисованииСтроки
ColumnCount=4
Column:0=Code
Column:1=Name
Column:2=Комментарий
Column:3=Проводить
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=173
MinWidth=150
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=300
MinWidth=200
OnDraw=Поле_ПриРисовании

[.Column.Комментарий]
Caption=Комментарий
Width=0
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Проводить]
Caption=Проводить
Width=100
MinWidth=80
Alignment=2
ColumnFormat=4
OnDraw=Поле_ПриРисовании

[Options]
Version=7
Query=МашРек.Настройки.Представление
HierarchicalField=Name
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=ТипПредставления
TreeVisible=1
TreeWidth=218
SubTableWidth=100
SubTableHeight=1

[.Column.Code]
Caption=Код
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=0
OnDraw=Поле_ПриРисовании

[.Column.ТипПредставления]
Caption=Тип представления
Width=152
ColumnType=1
OnOutput=ТипПредставления_ПриВыводе
OnDraw=Поле_ПриРисовании

[Options]
Version=7
Query=МашРек.Справочники.ТипДвижения
HierarchicalField=Name
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
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
Width=144
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Имя
Width=0
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[Options]
Version=7
Query=.Справочники.РеестрОпераций
HierarchicalField=Имя
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=4
Column:0=Код
Column:1=Имя
Column:2=Дебет
Column:3=Кредит
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Код]
Caption=Код
Width=100

[.Column.Имя]
Caption=Наименование
Width=416

[.Column.Дебет]
Caption=Дебет
Width=100

[.Column.Кредит]
Caption=Кредит
Width=89
ColumnFormat=1
OnDraw=Поле_ПриРисовании

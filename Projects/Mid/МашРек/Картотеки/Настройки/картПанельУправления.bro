[Options]
Version=7
Query=МашРек.Настройки.ПанельУправления
HierarchicalField=Name
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
ShowCount=0
CanCopy=1
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=Заголовок
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateVisible=0

[.Column.Code]
Caption=Код
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Заголовок]
Caption=Заголовок
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

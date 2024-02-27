[Options]
Version=7
Query=.Справочники.СтатьяУправленческогоБаланса
MBlank=.Справочники.редСтатьяУправленческогоБаланса
HBlank=.Справочники.редСтатьяУправленческогоБаланса
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=2
Column:0=Code
Column:1=Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=200
ColumnFormat=1

[.Column.Name]
Caption=Название
Width=0
ColumnFormat=1

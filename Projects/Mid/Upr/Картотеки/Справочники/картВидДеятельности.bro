[Options]
Version=7
Query=Biz.Ref.ActivityType
MBlank=.Справочники.редВидДеятельности
HBlank=.Справочники.редВидДеятельности
HierarchicalField=Name
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=Комментарий
TreeVisible=1
TreeWidth=120
SubTableWidth=0
SubTableHeight=0
SubTableAlign=0

[.Column.Code]
Caption=Код
Width=80
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=171
ColumnFormat=1

[.Column.Комментарий]
Caption=Комментарий
Width=0
Sortable=0
Alignment=2

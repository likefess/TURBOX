[Options]
Version=7
Query=Biz.Ref.CountryOrRegion
MBlank=.Справочники.редМесто
HierarchicalField=Имя
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OnClick=картотека_ПриНажатии
ColumnCount=5
Column:0=Код
Column:1=ЭтоСтрана
Column:2=ЭтоРегион
Column:3=Имя
Column:4=Комментарий
TreeVisible=1
TreeWidth=164
SubTableWidth=0
SubTableHeight=0
SubTableAlign=0

[.Column.Код]
Caption=Код
Width=80
ColumnFormat=1

[.Column.ЭтоСтрана]
Caption=Это страна
Width=70
Alignment=2
ColumnFormat=4

[.Column.ЭтоРегион]
Caption=Это регион
Width=70
Alignment=2
ColumnFormat=4

[.Column.Имя]
Caption=Наименование
Width=171
ColumnFormat=1

[.Column.Комментарий]
Caption=Комментарий
Width=0
Sortable=0
Alignment=2

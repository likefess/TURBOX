[Options]
Version=7
Query=.Справочники.ШтрихКод
MBlank=.Справочники.редШтрихКод
HBlank=.Справочники.редШтрихКод
HierarchicalField=ШтрихКод
CanHGroupModify=0
OrderBy=ШтрихКод
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnRearrange=картотека_ПриОформлении
ColumnCount=5
Column:0=ШтрихКод
Column:1=Процесс.Name
Column:2=ЕдиницаИзмерения.Name
Column:3=Модификация.Name
Column:4=Ресурс.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateWidth=123
CanResizeTemplate=1

[.Column.ШтрихКод]
Caption=Штрих-код
Width=200
ColumnFormat=1

[.Column.Процесс.Name]
Caption=Процесс
Width=100

[.Column.ЕдиницаИзмерения.Name]
Caption=Единица измерения
Width=100
Alignment=2

[.Column.Модификация.Name]
Caption=Модификация
Width=100
Alignment=2

[.Column.Ресурс.Name]
Caption=Ресурс
Width=100

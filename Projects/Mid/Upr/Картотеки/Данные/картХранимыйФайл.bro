[Options]
Version=7
Query=.Данные.ХранимыйФайл
CanCopy=1
OnClick=картотека_ПриНажатии
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=2
Column:0=Code
Column:1=Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateWidth=119
CanResizeTemplate=1

[.Column.Code]
Caption=Код
Width=100

[.Column.Name]
Caption=Имя
Hint=Наименование
Width=0
ColumnFormat=1

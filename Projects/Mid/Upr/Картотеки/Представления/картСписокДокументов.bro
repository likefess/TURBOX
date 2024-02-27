[Options]
Version=7
Query=.Данные.Процесс
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ShowCount=0
CanCopy=1
OnDrawRow=картотека_ПриРисованииСтроки
ColumnCount=7
Column:0=Code
Column:1=Name
Column:2=Комментарий
Column:3=ТипПроцесса.Name
Column:4=ДатаНачала
Column:5=ДатаВыверки
Column:6=ИзделиеПоСпецификации.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=120
CanResizeTemplate=1

[.Column.Code]
Caption=Код
Width=90

[.Column.Name]
Caption=Наименование
Width=236

[.Column.Комментарий]
Caption=Описание
Width=181
Sortable=0

[.Column.ТипПроцесса.Name]
Caption=Тип
Width=100

[.Column.ДатаНачала]
Caption=Дата начала
Width=100
Alignment=2

[.Column.ДатаВыверки]
Caption=Дата выверки
Width=100
Alignment=2

[.Column.ИзделиеПоСпецификации.Name]
Caption=Изделие
Width=100

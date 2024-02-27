[Options]
Version=7
Query=МашРек.Настройки.УмолчанияЗаписей
HierarchicalField=ИмяКлассаЗаписей
OnOpenBlank=картотека_ПриОткрытииБланка
ColumnCount=2
Column:0=ИмяКлассаЗаписей
Column:1=ЗаписьПоУмолчанию
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.ИмяКлассаЗаписей]
Caption=Тип записи
Width=0
ColumnFormat=1

[.Column.ЗаписьПоУмолчанию]
Caption=Запись - образец
Width=0
Sortable=0
Lookup=1
ColumnFormat=6
ManualEdit=1
OnOutput=Образец_ПриВыводе

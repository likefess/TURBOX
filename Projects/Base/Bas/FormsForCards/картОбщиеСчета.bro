[Options]
Version=7
Query=Kernel.Счета
HierarchicalField=Имя
CanEdit=0
OrderBy=Суперсчет;Имя
CanInplace=1
OnPost=картотека_ПриЗаписи
ColumnCount=5
Column:0=Имя
Column:1=Суперсчет
Column:2=Тип
Column:3=План
Column:4=Наименование
TreeWidth=105
SubTableWidth=100
SubTableHeight=100

[.Column.Имя]
Caption=Счет (субсчет)
Width=130
ColumnFormat=1
OnBeforeEdit=СтолбецИмя_ПриВходе
OnValidate=СтолбецИмя_ПриПроверке
OnAfterEdit=СтолбецИмя_ПриВыходе

[.Column.Суперсчет]
Caption=Является субсчетом для
Width=135
Lookup=1
ColumnFormat=1
OnBeforeEdit=СтолбецСуперсчет_ПриВходе
OnValidate=СтолбецСуперсчет_ПриПроверке
OnAfterEdit=СтолбецСуперсчет_ПриВыходе
OnLookup=СтолбецСуперсчет_ПриОбзоре

[.Column.Тип]
Caption=Тип счета
Width=150
Lookup=1
ColumnFormat=5
OnBeforeEdit=СтолбецТип_ПриВходе

[.Column.План]
Caption=План счетов
Width=150
Lookup=1
ColumnFormat=5
OnBeforeEdit=СтолбецПлан_ПриВходе

[.Column.Наименование]
Caption=Комментарий
Width=0
MinWidth=150
ColumnFormat=1

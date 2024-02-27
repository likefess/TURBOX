[Options]
Version=7
Query=Bas.Service.Numerator
CanEdit=0
CanInplace=1
ColumnCount=6
Column:0=КлассЗаписи
Column:1=ТипПроцесса.Name
Column:2=ТипНумератора.Name
Column:3=ДопРазрез
Column:4=ДатаНумерации
Column:5=Номер
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.КлассЗаписи]
Caption=КлассЗаписи
Width=116

[.Column.ТипПроцесса.Name]
Caption=Тип процесса
Width=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ТипНумератора.Name]
Caption=Тип нумератора
Width=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДопРазрез]
Caption=Доп. разрез
Width=100
Visible=0

[.Column.ДатаНумерации]
Caption=Период нумерации
Width=110
Alignment=2
ColumnFormat=3

[.Column.Номер]
Caption=Последний номер
Width=114
Alignment=1
ColumnFormat=2

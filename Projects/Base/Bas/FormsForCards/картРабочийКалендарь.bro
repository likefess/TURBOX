[Options]
Version=7
Query=.Ref.CalendarDay
CanEdit=0
CanHGroupModify=0
OrderBy=ДатаРабПраздДня
CanInplace=1
ColumnCount=3
Column:0=ДатаРабПраздДня
Column:1=ПризнакРабПраздДня
Column:2=Тип.Код
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.ДатаРабПраздДня]
Caption=Дата
Width=133
Lookup=1
Alignment=2
ColumnFormat=3

[.Column.ПризнакРабПраздДня]
Caption=Свойства
Width=203
Lookup=1
Alignment=1
ColumnFormat=5
EnumList="Праздник\x0D\x0AДополнительный рабочий день\x0D\x0AПредпраздничный день\x0D\x0AДополнительный выходной день\x0D\x0AРабочий день"

[.Column.Тип.Код]
Caption=Тип календаря
Width=191
Lookup=1
ColumnFormat=6
FieldCard=.картТипКалендаря
LookupField=Имя
ManualEdit=1

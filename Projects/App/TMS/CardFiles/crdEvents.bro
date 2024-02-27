[Options]
Version=7
Query=.Data.DayEvent
CanEdit=0
CanHGroupModify=0
OrderBy=Задача
CanInplace=1
CanInsert=0
CanMove=0
ColumnCount=7
Column:0=EventTime
Column:1=Project.Name
Column:2=Task.Name
Column:3=Role.Name
Column:4=Entity.Name
Column:5=Quantity
Column:6=Комментарий
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.EventTime]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2
OnBeforeEdit=ДатаПриВходе

[.Column.Project.Name]
Caption=Проект
Width=100
ColumnFormat=6
OnBeforeEdit=ДатаПриВходе

[.Column.Task.Name]
Caption=Задача
Width=100
ColumnFormat=6
OnBeforeEdit=ЗадачаИмяПриВходе

[.Column.Role.Name]
Caption=Роль
Width=100
ColumnFormat=6
OnBeforeEdit=ДатаПриВходе

[.Column.Entity.Name]
Caption=Сотрудник
Width=100
ColumnFormat=6
OnBeforeEdit=ДатаПриВходе

[.Column.Quantity]
Caption=Часы
Hint=Фактическая стоимость
Width=88
Alignment=1
ColumnFormat=2
Format=,##0.00;;-
OnBeforeEdit=ФактЧасыПриВходе

[.Column.Комментарий]
Caption=Комментарий
Hint=Комментарий
Width=189
ColumnFormat=1

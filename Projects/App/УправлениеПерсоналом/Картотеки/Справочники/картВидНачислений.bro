[Options]
Version=7
Query=.Справочники.ВидНачислений
Hierarchical=1
CanInplace=1
ColumnCount=9
Column:0=Locked
Column:1=Проводить
Column:2=Closed
Column:3=Code
Column:4=Name
Column:5=ДатаНачала
Column:6=ДатаОкончания
Column:7=ЕдРасчета
Column:8=ЕдВремени.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Locked]
Caption=Locked
Width=50
Alignment=2
ColumnFormat=4

[.Column.Проводить]
Caption=Проводить
Hint=@БазовыйВидРасчета:Проводить=Утверждено
Width=50
Alignment=2
ColumnFormat=4

[.Column.Closed]
Caption=Closed
Width=50
Alignment=2
ColumnFormat=4

[.Column.Code]
Caption=Code
Width=55
ColumnFormat=1

[.Column.Name]
Caption=Name
Width=88
ColumnFormat=1

[.Column.ДатаНачала]
Caption=ДатаНачала
Hint=@БазовыйВидРасчета:ДатаНачала=Дата начала действия
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаОкончания]
Caption=ДатаОкончания
Hint=@БазовыйВидРасчета:ДатаОкончания=Дата окончания действия
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ЕдРасчета]
Caption=ЕдРасчета
Hint=@ВидНачислений:ЕдРасчета=Единица расчета
Width=65
Alignment=1
ColumnFormat=2

[.Column.ЕдВремени.Name]
Caption=ЕдВремени
Hint=@ВидНачислений:ЕдВремени=Ед. изм. времени
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Options]
Version=7
Query=.Зарплата.ПрочиеНачисления
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=14
Column:0=Locked
Column:1=Closed
Column:2=Предприятие.Name
Column:3=Номер
Column:4=Дата
Column:5=Примечание
Column:6=ТипКонтрагента
Column:7=КоррРасчет.Номер
Column:8=Корректировка
Column:9=Подразделение.Name
Column:10=Проводить
Column:11=Начисление.Name
Column:12=Период.Name
Column:13=Скорректирован
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Locked]
Caption=Locked
Width=50
Alignment=2
ColumnFormat=4

[.Column.Closed]
Caption=Closed
Width=50
Alignment=2
ColumnFormat=4

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=160
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.ТипКонтрагента]
Caption=ТипКонтрагента
Hint=@ПрочиеНачисления:ТипКонтрагента=Тип сотрудника
Width=65
Alignment=1
ColumnFormat=2

[.Column.КоррРасчет.Номер]
Caption=КоррРасчет
Hint=@ПрочиеНачисления:КоррРасчет=Корр. расчет
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Корректировка]
Caption=Корректировка
Width=50
Alignment=2
ColumnFormat=4

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=@ПрочиеНачисления:Подразделение=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Проводить]
Caption=Проводить
Hint=@ПрочиеНачисления:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Начисление.Name]
Caption=Начисление
Hint=@ПрочиеНачисления:Начисление=Вид начисления
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Период.Name]
Caption=Период
Hint=@ПрочиеНачисления:Периода=Период
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Скорректирован]
Caption=Скорректирован
Hint=@ПрочиеНачисления:Скорректирован=Скорректирован
Width=50
Alignment=2
ColumnFormat=4

[Options]
Version=7
Query=.СреднийЗаработок.Больничный
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=19
Column:0=Locked
Column:1=Проводить
Column:2=Предприятие.Name
Column:3=Номер
Column:4=Дата
Column:5=УсловияТрудаСотр.Person.Name
Column:6=ВидСреднего.Name
Column:7=УслОбозн.Код
Column:8=Корректировка
Column:9=Скорректирован
Column:10=ДатаКорректировки
Column:11=Перерасчет.Номер
Column:12=ПредыдущийРасчет.Номер
Column:13=ДатаНачала
Column:14=ДатаОкончания
Column:15=Период.Name
Column:16=Начисление.Name
Column:17=ВсегоЧислоДнейФОТ
Column:18=ВсегоКВыдачеФОТ
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
Hint=@Базовый:Проводить=Проводить документ
Width=50
Alignment=2
ColumnFormat=4

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=117
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=69
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=73
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.УсловияТрудаСотр.Person.Name]
Caption=Сотрудник
Hint=@Базовый:УсловияТрудаСотр=Условия труда сотрудника
Width=138
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВидСреднего.Name]
Caption=Вид среднего
Hint=@Базовый:ВидCреднего=Вид среднего заработка
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.УслОбозн.Код]
Caption=Код
Hint=Усл. обозн.
Width=52
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Корректировка]
Caption=Корректировка
Width=50
Alignment=2
ColumnFormat=4

[.Column.Скорректирован]
Caption=Скорректирован
Hint=Скорректирован
Width=50
Alignment=2
ColumnFormat=4

[.Column.ДатаКорректировки]
Caption=Дата корректировки
Hint=Дата корректировки
Width=89
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Перерасчет.Номер]
Caption=Перерасчет
Width=90
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПредыдущийРасчет.Номер]
Caption=Предыдущий
Width=121
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДатаНачала]
Caption=Дата начала
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаОкончания]
Caption=Дата окончания
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Период.Name]
Caption=Период
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Начисление.Name]
Caption=Начисление
Hint=@Базовый:Начисление=Вид начисления
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВсегоЧислоДнейФОТ]
Caption=ВсегоЧислоДнейФОТ
Hint=Число дней ФОТ
Width=80
Alignment=1
ColumnFormat=2

[.Column.ВсегоКВыдачеФОТ]
Caption=ВсегоКВыдачеФОТ
Hint=Оплата ФОТ
Width=80
Alignment=1
ColumnFormat=2

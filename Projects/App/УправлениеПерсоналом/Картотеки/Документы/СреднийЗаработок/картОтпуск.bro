[Options]
Version=7
Query=.СреднийЗаработок.Отпуск
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=21
Column:0=Проводить
Column:1=Locked
Column:2=Предприятие.Name
Column:3=Номер
Column:4=Дата
Column:5=УсловияТрудаСотр.Person.Name
Column:6=ВидСреднего.Name
Column:7=ДокументПриказа.Номер
Column:8=УслОбозн.Код
Column:9=Корректировка
Column:10=Скорректирован
Column:11=ДатаКорректировки
Column:12=Перерасчет.Номер
Column:13=ПредыдущийРасчет.Номер
Column:14=ДатаНачала
Column:15=ДатаОкончания
Column:16=Период.Name
Column:17=Начисление.Name
Column:18=ВсегоЧислоДней
Column:19=ВсегоКВыдаче
Column:20=ВидОтпуска.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Проводить]
Caption=Проводить
Hint=@Базовый:Проводить=Проводить документ
Width=50
Alignment=2
ColumnFormat=4

[.Column.Locked]
Caption=Locked
Width=50
Alignment=2
ColumnFormat=4

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=131
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=63
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.УсловияТрудаСотр.Person.Name]
Caption=Сотрудник
Hint=@Базовый:УсловияТрудаСотр=Условия труда сотрудника
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВидСреднего.Name]
Caption=Вид cреднего
Hint=@Базовый:ВидCреднего=Вид среднего заработка
Width=88
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДокументПриказа.Номер]
Caption=Приказ
Width=101
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
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Перерасчет.Номер]
Caption=Перерасчет
Width=79
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПредыдущийРасчет.Номер]
Caption=Предыдущий расчет
Width=82
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

[.Column.ВсегоЧислоДней]
Caption=ВсегоЧислоДней
Width=80
Alignment=1
ColumnFormat=2

[.Column.ВсегоКВыдаче]
Caption=ВсегоКВыдаче
Width=80
Alignment=1
ColumnFormat=2

[.Column.ВидОтпуска.Name]
Caption=Вид отпуска
Hint=@РасчетОтпуска:Отпуск=Вид отпуска
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

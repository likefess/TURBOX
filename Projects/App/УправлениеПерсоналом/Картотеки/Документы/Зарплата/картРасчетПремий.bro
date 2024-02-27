[Options]
Version=7
Query=УправлениеПерсоналом.Зарплата.РасчетПремий
Hierarchical=1
CanInplace=1
ColumnCount=15
Column:0=Locked
Column:1=Closed
Column:2=Предприятие.Name
Column:3=Номер
Column:4=Дата
Column:5=ТипКонтрагента
Column:6=Корректировка
Column:7=Подразделение.Name
Column:8=ТипДокумента.Name
Column:9=Проводить
Column:10=Начисление.Name
Column:11=Период.Name
Column:12=Скорректирован
Column:13=Приказ.Номер
Column:14=ПериодПремии.Name
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

[.Column.ТипКонтрагента]
Caption=ТипКонтрагента
Hint=@РасчетПремий:Title=Тип контрагента
Width=65
Alignment=1
ColumnFormat=2

[.Column.Корректировка]
Caption=Корректировка
Hint=@РасчетПремий:Корректировка=Корректировка
Width=50
Alignment=2
ColumnFormat=4

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=@РасчетПремий:Title=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ТипДокумента.Name]
Caption=ТипДокумента
Hint=@РасчетПремий:ТипДокумента=Тип документа
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Проводить]
Caption=Проводить
Hint=@РасчетПремий:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Начисление.Name]
Caption=Начисление
Hint=@РасчетПремий:Начисление=Вид расчета
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Период.Name]
Caption=Период
Hint=@РасчетПремий:Период=Период
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Скорректирован]
Caption=Скорректирован
Hint=@РасчетПремий:Скорректирован=Скорректирован
Width=50
Alignment=2
ColumnFormat=4

[.Column.Приказ.Номер]
Caption=Приказ
Hint=@РасчетПремий:Приказ=Приказ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПериодПремии.Name]
Caption=ПериодПремии
Hint=@РасчетПремий:ПериодПремии=Период премии
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

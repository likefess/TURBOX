[Options]
Version=7
Query=.Кадры.Приказ
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=10
Column:0=Предприятие.Name
Column:1=Номер
Column:2=Дата
Column:3=Сотрудник.Name
Column:4=УсловияТрудаСотр.EmplNumber
Column:5=ТипПриказа.КадровыйДокумент
Column:6=Групповой
Column:7=Проводить
Column:8=Корректировка
Column:9=КоррПриказ.Номер
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=255
SubTableCount=1
SubTable:0=Позиции

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=119
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=77
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=83
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Сотрудник.Name]
Caption=ФИО
Hint=@Приказ:Сотрудник=Сотрудник
Width=118
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.УсловияТрудаСотр.EmplNumber]
Caption=Таб.номер
Hint=@Приказ:УсловияТрудаСотр=Условия труда сотрудника
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ТипПриказа.КадровыйДокумент]
Caption=Кадровый документ
Hint=@Приказ:ТипПриказа=Тип Приказа
Width=200
Lookup=1
ColumnFormat=5
EnumList="<Не указан>|0\x0D\x0AПрием на работу|1\x0D\x0AУстановление надбавок|2\x0D\x0AОтмена надбавок|3\x0D\x0AПеревод работника|4\x0D\x0AУвольнение работника|5\x0D\x0AПредоставление отпуска работнику|6\x0D\x0AОтзыв работника из отпуска|7\x0D\x0AНаправление работника в командировку|8\x0D\x0AУвеличение окладов (индексация)|9\x0D\x0AПоощрение работника|10\x0D\x0AОтсутствие без уважит. причин/ отстранение|11\x0D\x0AОб оплате нерабочих праздничных дней|12\x0D\x0AОб оплате сверхурочной работы|13\x0D\x0AИзменение прочих условий|14"

[.Column.Групповой]
Caption=Групповой
Hint=@Приказ:Групповой=Групповой
Width=50
Alignment=2
ColumnFormat=4

[.Column.Проводить]
Caption=Проводить
Hint=@Приказ:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Корректировка]
Caption=Корректировка
Hint=@Приказ:Корректировка=Корректировка
Width=50
Alignment=2
ColumnFormat=4

[.Column.КоррПриказ.Номер]
Caption=КоррПриказ
Hint=@Приказ:КоррПриказ=Корректируемый документ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
ColumnCount=10
Column:0=Сотрудник.Name
Column:1=РасчетПремий.Номер
Column:2=УсловияТрудаСотр.EmplNumber
Column:3=ДатаНачала
Column:4=ДатаОкончания
Column:5=Подразделение.Name
Column:6=Должность.Name
Column:7=Разряд.Name
Column:8=ВидЗанятости
Column:9=ДоляСтавки

[Позиции.Column.Сотрудник.Name]
Caption=ФИО
Width=100
Alignment=2

[Позиции.Column.РасчетПремий.Номер]
Caption=@БазовыйДокумент:Номер=Номер
Width=100

[Позиции.Column.УсловияТрудаСотр.EmplNumber]
Caption=Таб.номер
Width=100
Alignment=2

[Позиции.Column.ДатаНачала]
Caption=Дата начала
Width=100

[Позиции.Column.ДатаОкончания]
Caption=Дата окончания
Width=100

[Позиции.Column.Подразделение.Name]
Caption=Подразделение
Width=100
Alignment=2

[Позиции.Column.Должность.Name]
Caption=Должность
Width=100
Alignment=2

[Позиции.Column.Разряд.Name]
Caption=Разряд
Width=100
Alignment=2

[Позиции.Column.ВидЗанятости]
Caption=Вид занятости
Width=163
Alignment=1
ColumnFormat=5
EnumList="<Не указан>|0\x0D\x0AОсновное место работы|1\x0D\x0AВнешнее совместительство|2\x0D\x0AДоговоры за пределами штатного расписания|3    "

[Позиции.Column.ДоляСтавки]
Caption=Доля ставки
Width=100
Alignment=1

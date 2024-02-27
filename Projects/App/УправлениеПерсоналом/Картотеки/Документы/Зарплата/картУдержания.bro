[Options]
Version=7
Query=.Зарплата.Удержания
Hierarchical=1
OrderBy=Номер
CanInplace=1
ColumnCount=15
Column:0=Предприятие.Name
Column:1=Номер
Column:2=Дата
Column:3=ТипДокумента.Name
Column:4=Примечание
Column:5=Проводить
Column:6=УсловияТрудаСотр.Name
Column:7=Назначение
Column:8=ПроцентУдержания
Column:9=Очередность
Column:10=ОгрУдержания
Column:11=УчетПрожитМин
Column:12=ПрожМинимум.Name
Column:13=НомерДок
Column:14=ДатаДок
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=2
SubTable:0=Параметры
SubTable:1=Затраты

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=145
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=72
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=86
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ТипДокумента.Name]
Caption=Тип документа
Width=100

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.Проводить]
Caption=Проводить
Hint=@Базовый:Проводить=Проводить документ
Width=50
Alignment=2
ColumnFormat=4

[.Column.УсловияТрудаСотр.Name]
Caption=УсловияТрудаСотр
Hint=@Базовый:УсловияТрудаСотр=Условия труда сотрудника
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Назначение]
Caption=Назначение
Hint=@Базовый:Назначение=Назначение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПроцентУдержания]
Caption=ПроцентУдержания
Hint=@Базовый:ПроцентУдержания=Процент удержания по исп.листу
Width=80
Alignment=1
ColumnFormat=2

[.Column.Очередность]
Caption=Очередность
Hint=@Базовый:Очередность=Очередность
Width=65
Alignment=1
ColumnFormat=2

[.Column.ОгрУдержания]
Caption=ОгрУдержания
Hint=@Базовый:ОгрУдержания=Ограничение удержания по з/п
Width=80
Alignment=1
ColumnFormat=2

[.Column.УчетПрожитМин]
Caption=УчетПрожитМин
Hint=@Базовый:УчетПрожитМин=С учетом прожиточного минимума
Width=50
Alignment=2
ColumnFormat=4

[.Column.ПрожМинимум.Name]
Caption=ПрожМинимум
Hint=@Базовый:ПрожМинимум=Прожиточный минимум
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.НомерДок]
Caption=НомерДок
Hint=@Базовый:НомерДок=Номер документа
Width=160
ColumnFormat=1

[.Column.ДатаДок]
Caption=ДатаДок
Hint=@Базовый:ДатаДок=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[Параметры.Options]
Caption=Параметры
CanInplace=1
ColumnCount=0

[Затраты.Options]
Caption=Затраты
CanInplace=1
ColumnCount=0

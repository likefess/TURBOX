[Options]
Version=7
Query=.Зарплата.КарточкаРасчета
Hierarchical=1
CanInplace=1
ColumnCount=11
Column:0=Предприятие.Name
Column:1=Номер
Column:2=Дата
Column:3=ДатаКорректировки
Column:4=Примечание
Column:5=Проводить
Column:6=РасчетЗП.Номер
Column:7=Контрагент.Name
Column:8=УсловияТрудаСотр.Name
Column:9=Назначение
Column:10=ПериодРасчета.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

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
Width=72
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаКорректировки]
Caption=Дата корректировки
Width=100

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.Проводить]
Caption=Проводить
Hint=@КарточкаРасчета:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.РасчетЗП.Номер]
Caption=РасчетЗП
Hint=Расчет ЗП
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Контрагент.Name]
Caption=Контрагент
Hint=Контрагент: получатель дохода
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.УсловияТрудаСотр.Name]
Caption=УсловияТрудаСотр
Hint=@КарточкаРасчета:УсловияТрудаСотр=Условия труда сотрудника
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Назначение]
Caption=Назначение
Hint=@КарточкаРасчета:Назначение=Назначение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПериодРасчета.Name]
Caption=ПериодРасчета
Hint=@КарточкаРасчета:ПериодРасчета=Период
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

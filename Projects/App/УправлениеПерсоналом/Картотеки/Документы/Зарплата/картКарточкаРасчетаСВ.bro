[Options]
Version=7
Query=.Зарплата.КарточкаРасчетаСВ
Hierarchical=1
CanInplace=1
ColumnCount=7
Column:0=Предприятие.Name
Column:1=Номер
Column:2=Дата
Column:3=Проводить
Column:4=РасчетСВ.Номер
Column:5=ФизЛицо.Name
Column:6=ПериодРасчета.Name
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

[.Column.Проводить]
Caption=Проводить
Hint=@КарточкаРасчетаСВ:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.РасчетСВ.Номер]
Caption=РасчетСВ
Hint=@КарточкаРасчетаСВ:РасчетСВ=Расчет СВ
Width=86
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФизЛицо.Name]
Caption=ФизЛицо
Hint=@КарточкаРасчетаСВ:Контрагент=Контрагент: получатель дохода
Width=109
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПериодРасчета.Name]
Caption=ПериодРасчета
Hint=@КарточкаРасчетаСВ:ПериодРасчета=Период
Width=93
Lookup=1
ColumnFormat=6
ManualEdit=1

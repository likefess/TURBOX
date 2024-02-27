[Options]
Version=7
Query=.Выплаты.ВедомостьПеречислений
Hierarchical=1
CanInplace=1
ColumnCount=7
Column:0=Предприятие
Column:1=Номер
Column:2=Дата
Column:3=Проводить
Column:4=ПериодРасчета.Name
Column:5=ДатаНачПериода
Column:6=ДатаКонПериода
TreeVisible=1
TreeWidth=136
SubTableWidth=100
SubTableHeight=100

[.Column.Предприятие]
Caption=Предприятие
Width=100
Alignment=2

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=59
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
Width=100
Alignment=2

[.Column.ПериодРасчета.Name]
Caption=Период расчета
Width=140

[.Column.ДатаНачПериода]
Caption=Дата начала периода
Width=100

[.Column.ДатаКонПериода]
Caption=Дата окончания периода
Width=100

[Options]
Version=7
Query=.Кадры.ГрафикРаспределенияТР
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=12
Column:0=Проводить
Column:1=Предприятие.Name
Column:2=Подразделение.Name
Column:3=Номер
Column:4=Дата
Column:5=Период.Name
Column:6=Корректирован
Column:7=Корректировка
Column:8=КорректГрафик.Номер
Column:9=Примечание
Column:10=Closed
Column:11=Locked
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=186

[.Column.Проводить]
Caption=Проводить
Hint=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=120
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=Подразделение
Width=134
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Номер]
Caption=Номер
Hint=@БазовыйДокумент:Номер=Номер
Width=83
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@БазовыйДокумент:Дата=Дата документа
Width=82
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Период.Name]
Caption=Период
Hint=Период
Width=103
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Корректирован]
Caption=Скорректирован
Hint=Корректирован
Width=50
Alignment=2
ColumnFormat=4

[.Column.Корректировка]
Caption=Корректировка
Hint=Корректировка
Width=67
Alignment=2
ColumnFormat=4

[.Column.КорректГрафик.Номер]
Caption=Коррект. график
Hint=Корректируемый График распределение ТР
Width=108
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.Closed]
Caption=Завершен
Width=72
Alignment=2
ColumnFormat=4

[.Column.Locked]
Caption=Замок
Width=50
Alignment=2
ColumnFormat=4

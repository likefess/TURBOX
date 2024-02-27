[Options]
Version=7
Query=.Кадры.Табель_Т13
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=11
Column:0=Проводить
Column:1=Предприятие.Name
Column:2=Номер
Column:3=Дата
Column:4=Подразделение.Name
Column:5=Locked
Column:6=Closed
Column:7=Примечание
Column:8=Скорректирован
Column:9=Корректировка
Column:10=КорректТабель.Номер
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Проводить]
Caption=Проводить
Hint=Проводить документ
Width=42
Alignment=2
ColumnFormat=4

[.Column.Предприятие.Name]
Caption=Предприятие
Hint=@БазовыйДокумент:Предприятие=Предприятие
Width=112
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
Width=62
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Locked]
Caption=Замок
Width=50
Alignment=2
ColumnFormat=4

[.Column.Closed]
Caption=Завершен
Width=50
Alignment=2
ColumnFormat=4

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.Скорректирован]
Caption=Скорректирован
Hint=Скорректирован
Width=50
Alignment=2
ColumnFormat=4

[.Column.Корректировка]
Caption=Корректировка
Hint=Корректировка
Width=50
Alignment=2
ColumnFormat=4

[.Column.КорректТабель.Номер]
Caption=Коррект. табель
Hint=Корректируемый табель учета РВ
Width=102
Lookup=1
ColumnFormat=6
ManualEdit=1

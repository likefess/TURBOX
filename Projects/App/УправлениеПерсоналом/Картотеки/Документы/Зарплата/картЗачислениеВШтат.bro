[Options]
Version=7
Query=.Зарплата.ЗачислениеВШтат
Hierarchical=1
CanInplace=1
ColumnCount=9
Column:0=Предприятие.Name
Column:1=Номер
Column:2=Дата
Column:3=Примечание
Column:4=УсловияТрудаСотр.ФизЛицо.Name
Column:5=Организация
Column:6=ОтчетныйГод
Column:7=ИтогоНДФЛ
Column:8=СтавкаНДФЛ.Name
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Позиции

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

[.Column.Примечание]
Caption=Примечание
Hint=@БазовыйДокумент:Примечание=Примечание
Width=100
Sortable=0

[.Column.УсловияТрудаСотр.ФизЛицо.Name]
Caption=Сотрудник
Hint=@ЗачислениеВШтат:ФизЛицо=Физ.лицо
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Организация]
Caption=Организация
Hint=@ЗачислениеВШтат:Организация=Наименование организации
Width=200
ColumnFormat=1

[.Column.ОтчетныйГод]
Caption=ОтчетныйГод
Hint=@ЗачислениеВШтат:ОтчетныйГод=Отчетный год
Width=65
Alignment=1
ColumnFormat=2

[.Column.ИтогоНДФЛ]
Caption=ИтогоНДФЛ
Hint=@ЗачислениеВШтат:=ИтогоНДФЛ=Сумма налога исчисленная
Width=80
Alignment=1
ColumnFormat=2

[.Column.СтавкаНДФЛ.Name]
Caption=СтавкаНДФЛ
Hint=@ЗачислениеВШтат:СтавкаНДФЛ=Ставка НДФЛ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
CanInplace=1
ColumnCount=0

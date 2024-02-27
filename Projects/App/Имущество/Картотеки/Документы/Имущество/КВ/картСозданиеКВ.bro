[Options]
Version=7
Query=.Документы.СозданиеКВ
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=11
Column:0=Проводить
Column:1=ДатаНачала
Column:2=Номер
Column:3=Name
Column:4=КВ.Name
Column:5=ИтогоБезНДС
Column:6=ВалютаДок.Name
Column:7=НашеПредприятие.Name
Column:8=Подразделение.Name
Column:9=МОЛ.Name
Column:10=Locked
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Проводить]
Caption=Проводить
Hint=@Имущество:Проводить=Проводить
Width=60
Alignment=2
ColumnFormat=4

[.Column.ДатаНачала]
Caption=Дата
Hint=@Имущество:ДатаНачала=Дата
Width=76
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Номер]
Caption=Номер
Hint=@Имущество:Номер=Номер
Width=96
ColumnFormat=1

[.Column.Name]
Caption=Name
Width=109
Visible=0
ColumnFormat=1

[.Column.КВ.Name]
Caption=КВ
Hint=@Имущество:КВ=КВ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ИтогоБезНДС]
Caption=Итого (без НДС)
Hint=Итоговая сумма изменения стоимость объекта КВ (без учета НДС)
Width=100
Alignment=1

[.Column.ВалютаДок.Name]
Caption=Валюта
Hint=@Имущество:ВалютаДок=Валюта документа
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.НашеПредприятие.Name]
Caption=НашеПредприятие
Hint=@Имущество:НашеПредприятие=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=@Имущество:ТекущееПодразделение=Текущее подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.МОЛ.Name]
Caption=МОЛ
Hint=@Имущество:ТекущееМОЛ=Текущее МОЛ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Locked]
Caption=Замок
Width=40
Alignment=2
ColumnFormat=4

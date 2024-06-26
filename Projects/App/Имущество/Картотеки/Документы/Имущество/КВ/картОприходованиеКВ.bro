﻿[Options]
Version=7
Query=.Документы.ОприходованиеКВ
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=14
Column:0=Проводить
Column:1=ДатаНачала
Column:2=Номер
Column:3=Name
Column:4=КВ.Name
Column:5=Стоимость
Column:6=ВалютаДок.Name
Column:7=Количество
Column:8=Поставщик.Name
Column:9=Договор.Code
Column:10=НашеПредприятие.Name
Column:11=Подразделение.Name
Column:12=МОЛ.Name
Column:13=Locked
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

[.Column.Стоимость]
Caption=Стоимость
Hint=@Имущество:Стоимость=Стоимость
Width=80
Alignment=1
ColumnFormat=2

[.Column.ВалютаДок.Name]
Caption=Валюта
Hint=@Имущество:ВалютаДок=Валюта документа
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Количество]
Caption=Количество
Hint=@Имущество:Количество=Количество
Width=65
Alignment=1
ColumnFormat=2

[.Column.Поставщик.Name]
Caption=Поставщик
Width=100

[.Column.Договор.Code]
Caption=Договор
Width=100

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

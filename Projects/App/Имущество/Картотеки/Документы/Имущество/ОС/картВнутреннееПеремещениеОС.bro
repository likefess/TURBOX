[Options]
Version=7
Query=.Документы.ВнутреннееПеремещениеОС
Hierarchical=1
CanInplace=1
ColumnCount=6
Column:0=Номер
Column:1=Проводить
Column:2=ДатаНачала
Column:3=НашеПредприятие.Name
Column:4=ВалютаДок.Name
Column:5=ГрупповоеОС.Name
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=ПозицииОС

[.Column.Номер]
Caption=@Имущество:Номер=Номер
Width=96
ColumnFormat=1

[.Column.Проводить]
Caption=@Имущество:Проводить=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.ДатаНачала]
Caption=@Имущество:ДатаНачала=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НашеПредприятие.Name]
Caption=@Имущество:НашеПредприятие=Предприятие
Width=244
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВалютаДок.Name]
Caption=@Имущество:ВалютаДок=Валюта документа
Width=232
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ГрупповоеОС.Name]
Caption=@Имущество:ГрупповоеОС=Групповое ОС
Width=221
Lookup=1
ColumnFormat=6
ManualEdit=1

[ПозицииОС.Options]
CanInplace=1
ColumnCount=0

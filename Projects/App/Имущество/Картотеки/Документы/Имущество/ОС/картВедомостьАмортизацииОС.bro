[Options]
Version=7
Query=.Документы.ВедомостьАмортизацииОС
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=9
Column:0=Проводить
Column:1=ДатаНачала
Column:2=Code
Column:3=Номер
Column:4=Name
Column:5=НашеПредприятие.Name
Column:6=ВалютаДок.Name
Column:7=Comment
Column:8=Locked
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
Width=60
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Code]
Caption=Code
Width=106
Visible=0
ColumnFormat=1

[.Column.Номер]
Caption=Номер
Hint=@Имущество:Номер=Номер
Width=87
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=200
Visible=0
ColumnFormat=1

[.Column.НашеПредприятие.Name]
Caption=Предприятие
Hint=@Имущество:НашеПредприятие=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВалютаДок.Name]
Caption=Валюта
Hint=@Имущество:ВалютаДок=Валюта документа
Width=102
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Comment]
Caption=Комментарий
Width=308
Sortable=0

[.Column.Locked]
Caption=Замок
Width=40
Alignment=2
ColumnFormat=4

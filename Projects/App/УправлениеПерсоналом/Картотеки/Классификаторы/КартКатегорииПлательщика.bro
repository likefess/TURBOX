[Options]
Version=7
Query=.Классификаторы.КатегорииПлательщика
CanInplace=1
ColumnCount=5
Column:0=Name
Column:1=КодУчета
Column:2=ДатаНачала
Column:3=ДатаОкончания
Column:4=Описание
TreeVisible=1
TreeWidth=50
SubTableWidth=100
SubTableHeight=100

[.Column.Name]
Caption=Name
Width=200
ColumnFormat=1

[.Column.КодУчета]
Caption=КодУчета
Hint=@БазоваяКлассификатор:КодУчета=Код учета
Width=78
ColumnFormat=1

[.Column.ДатаНачала]
Caption=Начало
Hint=@БазоваяКлассификатор:ДатаНачала=Дата начала
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаОкончания]
Caption=Окончание
Hint=@БазоваяКлассификатор:ДатаОкончания=Дата окончания
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Описание]
Caption=Описание
Width=160
Sortable=0

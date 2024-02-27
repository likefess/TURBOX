[Options]
Version=7
Query=Contr.Data.Task
MBlank=.edtStructure
HBlank=.edtStructure
HierarchicalField=Имя
Hierarchical=1
OrderBy=Порядок
CanInsert=0
CanMove=0
ShowRecords=1
ColumnCount=12
Column:0=Имя
Column:1=Комментарий
Column:2=TaskStatus.Code
Column:3=Проект.Имя
Column:4=НомерДоговора
Column:5=ДатаНачала
Column:6=Deadline
Column:7=PlanCost
Column:8=FactCost
Column:9=ВидРВ.Код
Column:10=Ресурс.Имя
Column:11=Порядок
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
TemplateWidth=181
SubTableCount=1
SubTable:0=ПодСобытия

[.Column.Имя]
Caption=Наименование
Hint=Наименование
Width=60
ColumnFormat=1

[.Column.Комментарий]
Caption=Описание
Hint=Код
Width=105
ColumnFormat=1

[.Column.TaskStatus.Code]
Caption=ФазаЖЦ
Width=100
Alignment=2

[.Column.Проект.Имя]
Caption=Проект
Width=100
Alignment=2

[.Column.НомерДоговора]
Caption=Договор
Width=102
ColumnFormat=1

[.Column.ДатаНачала]
Caption=Дата с
Width=81
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Deadline]
Caption=Дата по
Width=80

[.Column.PlanCost]
Caption=План
Width=62
Alignment=1
ColumnFormat=2
Format=,##0;;-

[.Column.FactCost]
Caption=Факт
Width=63
Alignment=1
ColumnFormat=2
Format=,##0;;-

[.Column.ВидРВ.Код]
Caption=ВидРВ
Width=100
Alignment=2

[.Column.Ресурс.Имя]
Caption=Ресурс
Width=66
Alignment=2

[.Column.Порядок]
Caption=Порядок
Width=58
Alignment=1

[ПодСобытия.Options]
Caption=ПодСобытия
ColumnCount=5
Column:0=Дата
Column:1=ПланЧасы
Column:2=ФактЧасы
Column:3=Комментарий
Column:4=СостояниеУ.Код

[ПодСобытия.Column.Дата]
Caption=Дата
Width=100
ColumnFormat=3

[ПодСобытия.Column.ПланЧасы]
Caption=План
Width=98
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[ПодСобытия.Column.ФактЧасы]
Caption=Факт
Width=109
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[ПодСобытия.Column.Комментарий]
Caption=Комментарий
Width=137

[ПодСобытия.Column.СостояниеУ.Код]
Caption=Состояние
Width=100

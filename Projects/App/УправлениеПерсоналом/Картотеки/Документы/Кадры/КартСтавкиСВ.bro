[Options]
Version=7
Query=.Справочники.СтавкиСВ
CanInplace=1
ColumnCount=9
Column:0=Code
Column:1=Name
Column:2=ДатаНачала
Column:3=ДатаОкончания
Column:4=ОМС
Column:5=ФСС
Column:6=ЕСВ
Column:7=ЕСВ
Column:8=ЕСВ_Сверх
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Code
Hint=@СтавкиСВ:Код=Код
Width=75
ColumnFormat=1

[.Column.Name]
Caption=Name
Hint=@СтавкиСВ:Имя=Имя
Width=110
ColumnFormat=1

[.Column.ДатаНачала]
Caption=ДатаНачала
Hint=@СтавкиСВ:ДатаНачала=Дата начала
Width=72
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаОкончания]
Caption=ДатаОкончания
Hint=@СтавкиСВ:ДатаОкончания=Дата окончания
Width=77
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ОМС]
Caption=ОМС
Hint=@СтавкиСВ:ОМС=ОМС (отд. категории)
Width=80
Alignment=1
ColumnFormat=2

[.Column.ФСС]
Caption=ФСС
Hint=@СтавкиСВ:ФСС=ФСС (отд. категории)
Width=80
Alignment=1
ColumnFormat=2

[.Column.ЕСВ]
Caption=ЕСВ
Hint=@СтавкиСВ.Позиции:Страх=Взносы с 2014 года / Страховая часть
Width=80
Alignment=1
ColumnFormat=2

[.Column.ЕСВ_Сверх]
Caption=ЕСВ_Сверх
Hint=@СтавкиСВ.Позиции:Страх_Сверх=Взносы с 2014 года (свыше)
Width=80
Alignment=1
ColumnFormat=2

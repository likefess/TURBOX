[Options]
Version=7
Query=.Справочники.СОНормаВыдачи
HierarchicalField=Name
CanHGroupModify=0
OnModify=картотека_ПриИзменении
OrderBy=Code
HelpContext=.УиФ.Спецодежда.Основные данные.Нормы выдачи и использования
ColumnCount=5
Column:0=Code
Column:1=Name
Column:2=ВидОдежды
Column:3=ОснованиеВыдачи
Column:4=Пол
TreeVisible=1
TreeWidth=104
SubTableVisible=1
SubTableWidth=0
SubTableHeight=126
SubTableAlign=0
SubTableCount=1
SubTable:0=Позиции

[.Column.Code]
Caption=Код
Width=100

[.Column.Name]
Caption=Имя
Width=100

[.Column.ВидОдежды]
Caption=Тип
Width=117
Lookup=1
Alignment=1
ColumnFormat=5
EnumList="\x0D\x0AСпецодежда\x0D\x0AФорменное обмундирование\x0D\x0AСпецоснатка"

[.Column.ОснованиеВыдачи]
Caption=Основание для выдачи
Width=100

[.Column.Пол]
Caption=Пол
Width=100
Lookup=1
Alignment=1
ColumnFormat=5
EnumList="\x0D\x0AМужской\x0D\x0AЖенский"

[Позиции.Options]
Caption=Позиции
ColumnCount=6
Column:0=ТМЦ.Name
Column:1=Едизм.Code
Column:2=Колво
Column:3=Описание
Column:4=СрокНоски
Column:5=ТипНормы.Name

[Позиции.Column.ТМЦ.Name]
Caption=Наименование ТМЦ
Width=100
Lookup=1
Alignment=2
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Едизм.Code]
Caption=Едизм
Width=120
Lookup=1
Alignment=2
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Колво]
Caption=Количество
Width=100
Alignment=1

[Позиции.Column.Описание]
Caption=Описание
Width=100

[Позиции.Column.СрокНоски]
Caption=Срок носки
Width=100
Alignment=1

[Позиции.Column.ТипНормы.Name]
Caption=Тип нормы
Width=100
Lookup=1
Alignment=2
ColumnFormat=6
ManualEdit=1

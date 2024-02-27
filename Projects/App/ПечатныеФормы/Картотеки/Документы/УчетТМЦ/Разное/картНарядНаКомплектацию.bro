[Options]
Version=7
Query=.УчетТМЦ.Разное.НарКомпл
CanHGroupModify=0
OrderBy=Дата
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Склад.Наряд на комплектацию
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=10
Column:0=ИзСистемы
Column:1=Рекв.Имя
Column:2=НомерБум
Column:3=Дата
Column:4=Валюта.Имя
Column:5=ФИО.Имя
Column:6=Стр_Рекв
Column:7=РеквП.Имя
Column:8=Стр_РеквП
Column:9=Основание
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Позиции

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.Рекв.Имя]
Caption=Рекв
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.НомерБум]
Caption=НомерБум
Width=200
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Валюта.Имя]
Caption=Валюта
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО.Имя]
Caption=ФИО
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Стр_Рекв]
Caption=Стр_Рекв
Width=200
ColumnFormat=1

[.Column.РеквП.Имя]
Caption=РеквП
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Стр_РеквП]
Caption=Стр_РеквП
Width=200
ColumnFormat=1

[.Column.Основание]
Caption=Основание
Width=200
ColumnFormat=1

[Позиции.Options]
Caption=Табличная часть наряда
CanInplace=1
ColumnCount=10
Column:0=Ресурс.Имя
Column:1=Код
Column:2=Наим
Column:3=ЕдИзм.Имя
Column:4=Колич
Column:5=Цена
Column:6=Сумма
Column:7=СтавкаНДС.Имя
Column:8=СуммаНДС
Column:9=СумсНДС

[Позиции.Column.Ресурс.Имя]
Caption=Ресурс
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Код]
Caption=Код
Width=200
ColumnFormat=1

[Позиции.Column.Наим]
Caption=Наим
Width=200
ColumnFormat=1

[Позиции.Column.ЕдИзм.Имя]
Caption=ЕдИзм
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Колич]
Caption=Колич
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.Цена]
Caption=Цена
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.Сумма]
Caption=Сумма
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.СтавкаНДС.Имя]
Caption=НДС
Width=54
Alignment=2

[Позиции.Column.СуммаНДС]
Caption=СуммаНДС
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.СумсНДС]
Caption=СумсНДС
Width=80
Alignment=1
ColumnFormat=2

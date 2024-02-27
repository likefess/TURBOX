[Options]
Version=7
Query=.Прочие.Счет
HierarchicalField=НомерБум
CanHGroupModify=0
OrderBy=НомерБум
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Прочие.Счет на оплату
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=14
Column:0=ИзСистемы
Column:1=НОМЕРБУМ
Column:2=ДАТА
Column:3=Поле1
Column:4=РЕКВ.Имя
Column:5=РЕКВП.Имя
Column:6=Валюта.Имя
Column:7=Банк.БанкСубъекта.Имя
Column:8=АДРЕС
Column:9=ЗАКДАТА
Column:10=ДатаРезерваДо
Column:11=МОЛ.Имя
Column:12=БУХ.Имя
Column:13=РУК.Имя
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

[.Column.НОМЕРБУМ]
Caption=Номер
Width=72
ColumnFormat=1

[.Column.ДАТА]
Caption=Дата
Width=93
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Поле1]
Caption=Сумма
Width=100
Sortable=0
Summary=1
Alignment=1
ColumnType=1
ColumnFormat=2
Format=,##0.00;;-
OnOutput=Поле1_ПриВыводе

[.Column.РЕКВ.Имя]
Caption=Поставщик
Width=161
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.РЕКВП.Имя]
Caption=Получатель
Width=145
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Валюта.Имя]
Caption=Валюта
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Банк.БанкСубъекта.Имя]
Caption=Банк поставщика
Width=167
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.АДРЕС]
Caption=Адрес получателя
Width=200
ColumnFormat=1

[.Column.ЗАКДАТА]
Caption=Дата наряда
Width=88
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаРезерваДо]
Caption=Зарезервировано до
Width=125
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.МОЛ.Имя]
Caption=Выписал
Width=163
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.БУХ.Имя]
Caption=Бухгалтер
Width=124
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.РУК.Имя]
Caption=Руководитель
Width=155
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
ColumnCount=9
Column:0=Ресурс.Имя
Column:1=РесурсИмя
Column:2=Всего
Column:3=ЕдИзм.Код
Column:4=Колич
Column:5=Цена
Column:6=Сумма
Column:7=СтавкаНДС.Имя
Column:8=СуммаНДС

[Позиции.Column.Ресурс.Имя]
Caption=Наименование ТМЦ
Width=120

[Позиции.Column.РесурсИмя]
Caption=Наименование (ручной ввод)
Width=150
Visible=0

[Позиции.Column.Всего]
Caption=Сумма всего
Width=100
Summary=1
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.ЕдИзм.Код]
Caption=Ед. изм
Width=70

[Позиции.Column.Колич]
Caption=Количество
Width=80
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.Цена]
Caption=Цена
Width=100
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.Сумма]
Caption=Сумма без налога
Width=110
Summary=1
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.СтавкаНДС.Имя]
Caption=Ставка НДС
Width=100
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.СуммаНДС]
Caption=Сумма с НДС
Width=100
Summary=1
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

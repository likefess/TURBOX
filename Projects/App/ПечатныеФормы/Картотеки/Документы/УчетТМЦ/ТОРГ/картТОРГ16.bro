[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ16
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-16
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=15
Column:0=ИзСистемы
Column:1=НОМЕРБУМ
Column:2=ДАТА
Column:3=РЕКВ.Имя
Column:4=Подразделение.имя
Column:5=основание
Column:6=ДАТАДОК
Column:7=Номер1
Column:8=ДАТА1
Column:9=ФИО1.Имя
Column:10=ДАТА2
Column:11=ВИДОПЕР
Column:12=ФИО5.Имя
Column:13=Источник1
Column:14=ИСточник2
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=2
SubTable:0=Позиции
SubTable:1=Позиции1

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НОМЕРБУМ]
Caption=Номер
Width=110
ColumnFormat=1

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.имя]
Caption=Склад
Width=200
ColumnFormat=1

[.Column.основание]
Caption=Основание
Width=200
ColumnFormat=1

[.Column.ДАТАДОК]
Caption=ДАТАДОК
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Номер1]
Caption=Номер1
Width=200
Visible=0
ColumnFormat=1

[.Column.ДАТА1]
Caption=ДАТА1
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ФИО1.Имя]
Caption=ФИО1
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТА2]
Caption=ДАТА2
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ВИДОПЕР]
Caption=ВИДОПЕР
Width=200
Visible=0
ColumnFormat=1

[.Column.ФИО5.Имя]
Caption=ФИО5
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Источник1]
Caption=Источник1
Width=200
Visible=0
ColumnFormat=1

[.Column.ИСточник2]
Caption=ИСточник2
Width=200
Visible=0
ColumnFormat=1

[Позиции.Options]
Caption=Позиции
ColumnCount=6
Column:0=Датапоступления
Column:1=Список
Column:2=НомерТн
Column:3=ДатаТн
Column:4=НаименованиеПризнак
Column:5=Кодпризнак

[Позиции.Column.Датапоступления]
Caption=Дата поступления
Width=100

[Позиции.Column.Список]
Caption=Дата списания
Width=100

[Позиции.Column.НомерТн]
Caption=Номер накладной
Width=100

[Позиции.Column.ДатаТн]
Caption=Дата накладной
Width=100

[Позиции.Column.НаименованиеПризнак]
Caption=Причина списания
Width=100

[Позиции.Column.Кодпризнак]
Caption=Кодпризнак
Width=100
Visible=0

[Позиции1.Options]
Caption=Позиции1
ColumnCount=9
Column:0=ТМЦ.Имя
Column:1=ЕДИЗМ
Column:2=КОЛ
Column:3=НЕТТО
Column:4=ПРИМЕЧАНИЕ
Column:5=ЦЕНА
Column:6=СТОИМОСТЬ
Column:7=СУММА
Column:8=ШТ

[Позиции1.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[Позиции1.Column.ЕДИЗМ]
Caption=ЕДИЗМ
Width=100
Visible=0
Alignment=2

[Позиции1.Column.КОЛ]
Caption=Кол-во
Width=100
Alignment=1

[Позиции1.Column.НЕТТО]
Caption=НЕТТО
Width=100
Visible=0
Alignment=1

[Позиции1.Column.ПРИМЕЧАНИЕ]
Caption=ПРИМЕЧАНИЕ
Width=100
Visible=0

[Позиции1.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[Позиции1.Column.СТОИМОСТЬ]
Caption=Стоимость
Width=100
Alignment=1

[Позиции1.Column.СУММА]
Caption=Сумма
Width=100
Alignment=1

[Позиции1.Column.ШТ]
Caption=ШТ
Width=100
Visible=0
Alignment=1

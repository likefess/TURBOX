[Options]
Version=7
Query=.УчетТМЦ.Материалы.М4
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-4
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=19
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=Контрагент.Имя
Column:5=ПоказатьКонтрагента
Column:6=Сотрудник.Имя
Column:7=ПОДРАЗ.Имя
Column:8=СКЛАД.Имя
Column:9=КОРСЧЕТ
Column:10=АНСЧЕТ
Column:11=ОСНОВАНИЕ
Column:12=СТРАХ
Column:13=ДОК
Column:14=ТИПОПЕР
Column:15=ФИО1.Имя
Column:16=ФИО5.Имя
Column:17=ВАЛЮТА
Column:18=ДАТОПЕР
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=ПОЗИЦИИ

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НОМЕРБУМ]
Caption=Номер
Width=72
ColumnFormat=1

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Контрагент.Имя]
Caption=Поставщик контрагент
Width=100
Alignment=2

[.Column.ПоказатьКонтрагента]
Caption=Получатель ФизЛицо/ЮрЛицо
Width=100
Visible=0
Alignment=2

[.Column.Сотрудник.Имя]
Caption=Поставщик сотрудник
Width=100
Visible=0
Alignment=2

[.Column.ПОДРАЗ.Имя]
Caption=Подразделение
Width=200
ColumnFormat=1

[.Column.СКЛАД.Имя]
Caption=Склад
Width=200
ColumnFormat=1

[.Column.КОРСЧЕТ]
Caption=КОРСЧЕТ
Width=200
Visible=0
ColumnFormat=1

[.Column.АНСЧЕТ]
Caption=АНСЧЕТ
Width=200
Visible=0
ColumnFormat=1

[.Column.ОСНОВАНИЕ]
Caption=ОСНОВАНИЕ
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРАХ]
Caption=СТРАХ
Width=200
Visible=0
ColumnFormat=1

[.Column.ДОК]
Caption=ДОК
Width=200
Visible=0
ColumnFormat=1

[.Column.ТИПОПЕР]
Caption=ТИПОПЕР
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.ФИО1.Имя]
Caption=ФИО лица, отпустившего материалы
Width=100
Visible=0
Alignment=2

[.Column.ФИО5.Имя]
Caption=ФИО лица, принявшего материалы
Width=100
Visible=0
Alignment=2

[.Column.ВАЛЮТА]
Caption=ВАЛЮТА
Width=50
Visible=0
ColumnFormat=1

[.Column.ДАТОПЕР]
Caption=ДАТОПЕР
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=8
Column:0=ТМЦ.Имя
Column:1=ПАСПОРТ
Column:2=ДОККОЛ
Column:3=ЕДИЗМ.Имя
Column:4=КОЛИЧ
Column:5=НДС
Column:6=ЦЕНА
Column:7=СуммаНДС

[ПОЗИЦИИ.Column.ТМЦ.Имя]
Caption=Наименование
Width=180
Alignment=2

[ПОЗИЦИИ.Column.ПАСПОРТ]
Caption=Паспорт
Width=100
Visible=0

[ПОЗИЦИИ.Column.ДОККОЛ]
Caption=Колич. по документу
Width=105
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.ЕДИЗМ.Имя]
Caption=Ед. изм.
Width=62
Visible=0
Alignment=2

[ПОЗИЦИИ.Column.КОЛИЧ]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.НДС]
Caption=НДС
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ.Column.СуммаНДС]
Caption=Сумма НДС
Width=100
Alignment=1

[Options]
Version=7
Query=.УчетТМЦ.Материалы.М15
HierarchicalField=НОМЕРБУМ
CanHGroupModify=0
OrderBy=НОМЕРБУМ
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-15
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=20
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=РЕКВП.Имя
Column:5=ТИПОПЕР
Column:6=КОММЕНТАРИЙ
Column:7=ВАЛЮТА
Column:8=ОСНОВАНИЕ
Column:9=КОГО
Column:10=Должность
Column:11=КОДИСП
Column:12=ПОДРАЗД
Column:13=ВДОтп
Column:14=ВДПол
Column:15=ВДПост
Column:16=СКЛАДОтп.Имя
Column:17=СкладПол.Имя
Column:18=ФИО1.Имя
Column:19=ФИО2.Имя
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

[.Column.РЕКВП.Имя]
Caption=Получатель
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ТИПОПЕР]
Caption=ТИПОПЕР
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.КОММЕНТАРИЙ]
Caption=КОММЕНТАРИЙ
Width=200
Visible=0
ColumnFormat=1

[.Column.ВАЛЮТА]
Caption=ВАЛЮТА
Width=50
Visible=0
ColumnFormat=1

[.Column.ОСНОВАНИЕ]
Caption=ОСНОВАНИЕ
Width=200
Visible=0
ColumnFormat=1

[.Column.КОГО]
Caption=КОГО
Width=200
Visible=0
ColumnFormat=1

[.Column.Должность]
Caption=Должность
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДИСП]
Caption=КОДИСП
Width=200
Visible=0
ColumnFormat=1

[.Column.ПОДРАЗД]
Caption=Подразделение
Width=100
Visible=0
Alignment=2

[.Column.ВДОтп]
Caption=Вид деятельности
Width=100
Visible=0

[.Column.ВДПол]
Caption=Вид деятельности
Width=100
Visible=0

[.Column.ВДПост]
Caption=Вид деятельности
Width=100
Visible=0

[.Column.СКЛАДОтп.Имя]
Caption=Склад
Width=100
Visible=0
Alignment=2

[.Column.СкладПол.Имя]
Caption=Получатель
Width=100
Visible=0
Alignment=2

[.Column.ФИО1.Имя]
Caption=ФИО лица, отпустившего материалы
Width=100
Visible=0
Alignment=2

[.Column.ФИО2.Имя]
Caption=ФИО лица, отпустившего материалы
Width=100
Visible=0
Alignment=2

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=9
Column:0=ТМЦ.Имя
Column:1=АНСЧЕТ
Column:2=ИНВN
Column:3=ДОККОЛ
Column:4=КОЛИЧ
Column:5=ЕДИЗМ
Column:6=ЦЕНА
Column:7=СУММА
Column:8=СУММАНДС1

[ПОЗИЦИИ.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ.Column.АНСЧЕТ]
Caption=Счет
Width=70
Visible=0

[ПОЗИЦИИ.Column.ИНВN]
Caption=Инв. номер
Width=100
Visible=0

[ПОЗИЦИИ.Column.ДОККОЛ]
Caption=Затребовано
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.КОЛИЧ]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.ЕДИЗМ]
Caption=Ед. изм.
Width=62
Visible=0
Alignment=2

[ПОЗИЦИИ.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ.Column.СУММА]
Caption=Сумма
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.СУММАНДС1]
Caption=Сумма с НДС
Width=100
Visible=0
Alignment=1

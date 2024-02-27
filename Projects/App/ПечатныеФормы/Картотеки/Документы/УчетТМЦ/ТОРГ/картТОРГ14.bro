[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ14
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-14
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=14
Column:0=ИзСистемы
Column:1=дата
Column:2=номербум
Column:3=рекв.Имя
Column:4=Подразделение.имя
Column:5=кому_фио
Column:6=через_фио
Column:7=номерД
Column:8=фио11.Имя
Column:9=фио12.Имя
Column:10=фио13.Имя
Column:11=Датаотпр
Column:12=проп2
Column:13=проп3
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

[.Column.дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.номербум]
Caption=Номер
Width=200
ColumnFormat=1

[.Column.рекв.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.имя]
Caption=Склад
Width=200
ColumnFormat=1

[.Column.кому_фио]
Caption=Отпущено
Width=200
ColumnFormat=1

[.Column.через_фио]
Caption=Через
Width=200
ColumnFormat=1

[.Column.номерД]
Caption=номерД
Width=200
Visible=0
ColumnFormat=1

[.Column.фио11.Имя]
Caption=фио11
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.фио12.Имя]
Caption=фио12
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.фио13.Имя]
Caption=фио13
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Датаотпр]
Caption=Датаотпр
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.проп2]
Caption=проп2
Width=200
Visible=0
ColumnFormat=1

[.Column.проп3]
Caption=проп3
Width=200
Visible=0
ColumnFormat=1

[Позиции.Options]
Caption=Позиции
ColumnCount=12
Column:0=ТМЦ.Имя
Column:1=Цена
Column:2=Арт
Column:3=Количотпущ
Column:4=Суммаотпущ
Column:5=Количсдано
Column:6=наимедизм
Column:7=Полнота
Column:8=Размер
Column:9=Сорт
Column:10=Суммасдано
Column:11=Суммапрод

[Позиции.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[Позиции.Column.Цена]
Caption=Цена
Width=100
Alignment=1

[Позиции.Column.Арт]
Caption=Арт
Width=100
Visible=0

[Позиции.Column.Количотпущ]
Caption=Кол-во отпущено
Width=100
Alignment=1

[Позиции.Column.Суммаотпущ]
Caption=Сумма отпущеного
Width=100
Alignment=1

[Позиции.Column.Количсдано]
Caption=Кол-во сдано
Width=100
Alignment=1

[Позиции.Column.наимедизм]
Caption=наимедизм
Width=100
Visible=0
Alignment=2

[Позиции.Column.Полнота]
Caption=Полнота
Width=100
Visible=0

[Позиции.Column.Размер]
Caption=Размер
Width=100
Visible=0

[Позиции.Column.Сорт]
Caption=Сорт
Width=100
Visible=0

[Позиции.Column.Суммасдано]
Caption=Сумма сданного
Width=100
Alignment=1

[Позиции.Column.Суммапрод]
Caption=Сумма проданного
Width=100
Alignment=1

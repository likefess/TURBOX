[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ13
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-13
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=13
Column:0=ИзСистемы
Column:1=НОМЕРБУМ
Column:2=ДАТА
Column:3=РЕКВ.Имя
Column:4=ДАТАДОК
Column:5=Подразделение.Имя
Column:6=ВИДДЕЯТОТПРАВ
Column:7=ПодразделениеПОЛУЧ.Имя
Column:8=ВИДДЕЯТПОЛУЧ
Column:9=СЧКРЕ
Column:10=КОДУЧ
Column:11=ФИО1.Имя
Column:12=ФИО2.Имя
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
Width=200
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

[.Column.ДАТАДОК]
Caption=ДАТАДОК
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Подразделение.Имя]
Caption=Отправитель
Width=200
ColumnFormat=1

[.Column.ВИДДЕЯТОТПРАВ]
Caption=ВИДДЕЯТОТПРАВ
Width=200
Visible=0
ColumnFormat=1

[.Column.ПодразделениеПОЛУЧ.Имя]
Caption=Получатель
Width=200
ColumnFormat=1

[.Column.ВИДДЕЯТПОЛУЧ]
Caption=ВИДДЕЯТПОЛУЧ
Width=200
Visible=0
ColumnFormat=1

[.Column.СЧКРЕ]
Caption=СЧКРЕ
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДУЧ]
Caption=КОДУЧ
Width=200
Visible=0
ColumnFormat=1

[.Column.ФИО1.Имя]
Caption=ФИО1
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО2.Имя]
Caption=ФИО2
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
ColumnCount=9
Column:0=ТМЦ.Имя
Column:1=БРУТТО
Column:2=КОЛИЧ
Column:3=КОЛИЧШТ
Column:4=НАИМЕД
Column:5=НЕТТО
Column:6=СОРТ
Column:7=СУММА
Column:8=ЦЕНА

[Позиции.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[Позиции.Column.БРУТТО]
Caption=БРУТТО
Width=100
Visible=0
Alignment=1

[Позиции.Column.КОЛИЧ]
Caption=Кол-во
Width=100
Alignment=1

[Позиции.Column.КОЛИЧШТ]
Caption=КОЛИЧШТ
Width=100
Visible=0
Alignment=1

[Позиции.Column.НАИМЕД]
Caption=НАИМЕД
Width=100
Visible=0
Alignment=2

[Позиции.Column.НЕТТО]
Caption=НЕТТО
Width=100
Visible=0
Alignment=1

[Позиции.Column.СОРТ]
Caption=СОРТ
Width=100
Visible=0

[Позиции.Column.СУММА]
Caption=Сумма
Width=100
Alignment=1

[Позиции.Column.ЦЕНА]
Caption=ЦЕНА
Width=100
Visible=0
Alignment=1

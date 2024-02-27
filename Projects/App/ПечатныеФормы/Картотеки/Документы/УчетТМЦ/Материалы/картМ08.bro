[Options]
Version=7
Query=.УчетТМЦ.Материалы.М8
HierarchicalField=НОМЕРБУМ
CanHGroupModify=0
OrderBy=НОМЕРБУМ
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-8
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=27
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=ЕдИзм
Column:4=ТМЦ.Имя
Column:5=ФИО1
Column:6=ФИО2
Column:7=ФИО5
Column:8=ДАТАСОСТ
Column:9=РЕКВ.Имя
Column:10=КОД
Column:11=ВИДДЕЯТ
Column:12=ОТПРАВИТЕЛЬ.Имя
Column:13=ПОЛУЧАТЕЛЬ.Имя
Column:14=СЧЕТ
Column:15=КОДАН
Column:16=УЧЕД
Column:17=ЛИМИТ
Column:18=НОМЕРСКЛ
Column:19=НАМНОМЕР
Column:20=ВСЕГООТПУЩ
Column:21=ЦЕНА
Column:22=СУММА
Column:23=ФИО1.Имя
Column:24=ФИО2.Имя
Column:25=ФИО5.Имя
Column:26=ДАТАЗАВ
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=2
SubTable:0=ПОЗИЦИИ
SubTable:1=ПОЗИЦИИ1

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
Width=200
ColumnFormat=1

[.Column.ЕдИзм]
Caption=ЕдИзм
Width=100
Visible=0
Alignment=2

[.Column.ТМЦ.Имя]
Caption=ТМЦ
Width=100
Visible=0
Alignment=2

[.Column.ФИО1]
Caption=ФИО1
Width=100
Visible=0
Alignment=2

[.Column.ФИО2]
Caption=ФИО2
Width=100
Visible=0
Alignment=2

[.Column.ФИО5]
Caption=ФИО5
Width=100
Visible=0
Alignment=2

[.Column.ДАТАСОСТ]
Caption=ДАТАСОСТ
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.КОД]
Caption=КОД
Width=200
Visible=0
ColumnFormat=1

[.Column.ВИДДЕЯТ]
Caption=ВИДДЕЯТ
Width=200
Visible=0
ColumnFormat=1

[.Column.ОТПРАВИТЕЛЬ.Имя]
Caption=Отправитель
Width=200
ColumnFormat=1

[.Column.ПОЛУЧАТЕЛЬ.Имя]
Caption=Получатель
Width=200
ColumnFormat=1

[.Column.СЧЕТ]
Caption=СЧЕТ
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДАН]
Caption=КОДАН
Width=200
Visible=0
ColumnFormat=1

[.Column.УЧЕД]
Caption=УЧЕД
Width=200
Visible=0
ColumnFormat=1

[.Column.ЛИМИТ]
Caption=ЛИМИТ
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМЕРСКЛ]
Caption=НОМЕРСКЛ
Width=200
Visible=0
ColumnFormat=1

[.Column.НАМНОМЕР]
Caption=НАМНОМЕР
Width=200
Visible=0
ColumnFormat=1

[.Column.ВСЕГООТПУЩ]
Caption=ВСЕГООТПУЩ
Width=80
Visible=0
Alignment=1
ColumnFormat=2

[.Column.ЦЕНА]
Caption=ЦЕНА
Width=80
Visible=0
Alignment=1
ColumnFormat=2

[.Column.СУММА]
Caption=СУММА
Width=80
Visible=0
Alignment=1
ColumnFormat=2

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

[.Column.ФИО5.Имя]
Caption=ФИО5
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТАЗАВ]
Caption=ДАТАЗАВ
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=3
Column:0=ДАТАЛИМ
Column:1=КОЛ
Column:2=ОСТЛИМ

[ПОЗИЦИИ.Column.ДАТАЛИМ]
Caption=Дата
Width=100

[ПОЗИЦИИ.Column.КОЛ]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.ОСТЛИМ]
Caption=Остаток лимита
Width=100
Alignment=1

[ПОЗИЦИИ1.Options]
Caption=ПОЗИЦИИ1
ColumnCount=3
Column:0=ДАТАЛИМВОЗВРАТ
Column:1=КОЛВОЗВРАТ
Column:2=ОСТЛИМВОЗВРАТ

[ПОЗИЦИИ1.Column.ДАТАЛИМВОЗВРАТ]
Caption=Дата
Width=100

[ПОЗИЦИИ1.Column.КОЛВОЗВРАТ]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ1.Column.ОСТЛИМВОЗВРАТ]
Caption=Остаток лимита
Width=100
Alignment=1

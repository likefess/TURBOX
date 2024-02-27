[Options]
Version=7
Query=.УчетТМЦ.Материалы.М11
HierarchicalField=НОМЕРБУМ
CanHGroupModify=0
OrderBy=НОМЕРБУМ
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-11
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=24
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=ВидДеятО
Column:5=ВидДеятП
Column:6=СкладОтп.Имя
Column:7=СкладПол.Имя
Column:8=ФИО1
Column:9=ФИО2
Column:10=ФИО5
Column:11=ПРОВОДИТЬ
Column:12=РАСХОД
Column:13=ТИПОПЕР
Column:14=ПЕРЕДАЧАДОК
Column:15=ПЕРЕДАЧАТМЦ
Column:16=КОММЕНТАРИЙ
Column:17=ВАЛЮТА
Column:18=ДАТОПЕР
Column:19=ОСНОВАНИЕ
Column:20=КОГО
Column:21=КОРСЧЕТ1
Column:22=АНСЧЕТ1
Column:23=ИТОГО
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=КОЛТРЕБ

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

[.Column.ВидДеятО]
Caption=Вид деятельности
Width=100
Visible=0

[.Column.ВидДеятП]
Caption=Вид деятельности
Width=100
Visible=0

[.Column.СкладОтп.Имя]
Caption=Склад отправителя
Width=100
Alignment=2

[.Column.СкладПол.Имя]
Caption=Склад получателя
Width=100
Alignment=2

[.Column.ФИО1]
Caption=ФИО лица, принявшего материалы
Width=100
Visible=0
Alignment=2

[.Column.ФИО2]
Caption=ФИО2
Width=100
Visible=0
Alignment=2

[.Column.ФИО5]
Caption=ФИО лица, отпустившего материалы
Width=100
Visible=0
Alignment=2

[.Column.ПРОВОДИТЬ]
Caption=ПРОВОДИТЬ
Width=50
Visible=0
Alignment=2
ColumnFormat=4

[.Column.РАСХОД]
Caption=РАСХОД
Width=50
Visible=0
Alignment=2
ColumnFormat=4

[.Column.ТИПОПЕР]
Caption=ТИПОПЕР
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.ПЕРЕДАЧАДОК]
Caption=ПЕРЕДАЧАДОК
Width=50
Visible=0
Alignment=2
ColumnFormat=4

[.Column.ПЕРЕДАЧАТМЦ]
Caption=ПЕРЕДАЧАТМЦ
Width=50
Visible=0
Alignment=2
ColumnFormat=4

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

[.Column.ДАТОПЕР]
Caption=ДАТОПЕР
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

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

[.Column.КОРСЧЕТ1]
Caption=КОРСЧЕТ1
Width=200
Visible=0
ColumnFormat=1

[.Column.АНСЧЕТ1]
Caption=АНСЧЕТ1
Width=200
Visible=0
ColumnFormat=1

[.Column.ИТОГО]
Caption=ИТОГО
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[КОЛТРЕБ.Options]
Caption=КОЛТРЕБ
ColumnCount=10
Column:0=ТМЦ.Имя
Column:1=АнСчет
Column:2=ДокКол
Column:3=ЕдИзм
Column:4=ИнвN
Column:5=Карт
Column:6=Колич
Column:7=КорСчет
Column:8=Паспорт
Column:9=Цена

[КОЛТРЕБ.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[КОЛТРЕБ.Column.АнСчет]
Caption=Аналитический счет
Width=100
Visible=0

[КОЛТРЕБ.Column.ДокКол]
Caption=Количество затребовано
Width=100
Visible=0
Alignment=1

[КОЛТРЕБ.Column.ЕдИзм]
Caption=Единица измерения
Width=100
Visible=0
Alignment=2

[КОЛТРЕБ.Column.ИнвN]
Caption=Инвентарный номер
Width=100
Visible=0

[КОЛТРЕБ.Column.Карт]
Caption=Порядковый номер записи в скл.картотеке
Width=100
Visible=0
Alignment=1

[КОЛТРЕБ.Column.Колич]
Caption=Кол-во
Width=119
Alignment=1

[КОЛТРЕБ.Column.КорСчет]
Caption=Корреспондирующий счет/субсчет
Width=100
Visible=0

[КОЛТРЕБ.Column.Паспорт]
Caption=Номер паспорта
Width=100
Visible=0

[КОЛТРЕБ.Column.Цена]
Caption=Цена
Width=100
Alignment=1

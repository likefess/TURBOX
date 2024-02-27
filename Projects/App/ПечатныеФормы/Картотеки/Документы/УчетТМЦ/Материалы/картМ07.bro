[Options]
Version=7
Query=.УчетТМЦ.Материалы.М7
HierarchicalField=НОМЕРБУМ
CanHGroupModify=0
OrderBy=НОМЕРБУМ
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-7
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=51
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=ФИО.Имя
Column:5=ДАТАСОСТ
Column:6=МЕСТО
Column:7=ЧАСПРИЕМ
Column:8=МИНПРИЕМ
Column:9=ЧАСКОНЕЦ
Column:10=МИНКОНЕЦ
Column:11=ДОКУМЕНТ
Column:12=СЕРТИФИКАТ
Column:13=СТАНЦИЯ
Column:14=НОМСОПРОВ
Column:15=НОМЕРВАГОН
Column:16=ДАТАСОПРОВ
Column:17=ОТПРАВИТЕЛЬ.Имя
Column:18=ПОСТАВЩИК.Имя
Column:19=ПОЛУЧАТЕЛЬ.Имя
Column:20=СТРАХОВЩИК.Имя
Column:21=ДОГОВОР
Column:22=ДОГОВОРДАТА
Column:23=ЗАГОТОВИТЕЛЬ
Column:24=СТРОКА1
Column:25=СТРОКА2
Column:26=СТРОКА8
Column:27=СТРОКА3
Column:28=КОДВИДА
Column:29=ПОДР_сТР
Column:30=ВИД_ДЕЯТ
Column:31=СКЛАД1
Column:32=КОДПОСТАВ
Column:33=СЧЕТСУБ
Column:34=КОДАН
Column:35=НОМЕРДОКУМЕНТА
Column:36=строка10
Column:37=строка11
Column:38=ФИО1.Имя
Column:39=ФИО2.Имя
Column:40=ФИО3.Имя
Column:41=ФИО4.Имя
Column:42=ФИО5.Имя
Column:43=ФИО6.Имя
Column:44=ДАТА1
Column:45=ДАТА2
Column:46=ДАТА3
Column:47=ДАТА4
Column:48=ДАТА5
Column:49=ДАТА6
Column:50=КомАкт
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=9
SubTable:0=ПОЗИЦИИ1
SubTable:1=ПОЗИЦИИ2
SubTable:2=ПОЗИЦИИ_СТРОКА1
SubTable:3=ПОЗИЦИИ_СТРОКА2
SubTable:4=ПОЗИЦИИ_СТРОКА3
SubTable:5=ПОЗИЦИИ_СТРОКА8
SubTable:6=ПОЗИЦИИ3
SubTable:7=ПОЗИЦИИ_СТРОКА10
SubTable:8=ПОЗИЦИИ_СТРОКА11

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
Width=126
ColumnFormat=1

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО.Имя]
Caption=ФИО
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТАСОСТ]
Caption=ДАТАСОСТ
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.МЕСТО]
Caption=МЕСТО
Width=200
Visible=0
ColumnFormat=1

[.Column.ЧАСПРИЕМ]
Caption=ЧАСПРИЕМ
Width=200
Visible=0
ColumnFormat=1

[.Column.МИНПРИЕМ]
Caption=МИНПРИЕМ
Width=200
Visible=0
ColumnFormat=1

[.Column.ЧАСКОНЕЦ]
Caption=ЧАСКОНЕЦ
Width=200
Visible=0
ColumnFormat=1

[.Column.МИНКОНЕЦ]
Caption=МИНКОНЕЦ
Width=200
Visible=0
ColumnFormat=1

[.Column.ДОКУМЕНТ]
Caption=ДОКУМЕНТ
Width=200
Visible=0
ColumnFormat=1

[.Column.СЕРТИФИКАТ]
Caption=СЕРТИФИКАТ
Width=200
Visible=0
ColumnFormat=1

[.Column.СТАНЦИЯ]
Caption=СТАНЦИЯ
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМСОПРОВ]
Caption=НОМСОПРОВ
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМЕРВАГОН]
Caption=НОМЕРВАГОН
Width=200
Visible=0
ColumnFormat=1

[.Column.ДАТАСОПРОВ]
Caption=ДАТАСОПРОВ
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ОТПРАВИТЕЛЬ.Имя]
Caption=Отправитель
Width=200
ColumnFormat=1

[.Column.ПОСТАВЩИК.Имя]
Caption=Поставщик
Width=200
ColumnFormat=1

[.Column.ПОЛУЧАТЕЛЬ.Имя]
Caption=Получатель
Width=200
ColumnFormat=1

[.Column.СТРАХОВЩИК.Имя]
Caption=Страховщик
Width=200
ColumnFormat=1

[.Column.ДОГОВОР]
Caption=ДОГОВОР
Width=200
Visible=0
ColumnFormat=1

[.Column.ДОГОВОРДАТА]
Caption=ДОГОВОРДАТА
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ЗАГОТОВИТЕЛЬ]
Caption=ЗАГОТОВИТЕЛЬ
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА1]
Caption=СТРОКА1
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА2]
Caption=СТРОКА2
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА8]
Caption=СТРОКА8
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА3]
Caption=СТРОКА3
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДВИДА]
Caption=КОДВИДА
Width=200
Visible=0
ColumnFormat=1

[.Column.ПОДР_сТР]
Caption=ПОДР_сТР
Width=200
Visible=0
ColumnFormat=1

[.Column.ВИД_ДЕЯТ]
Caption=ВИД_ДЕЯТ
Width=200
Visible=0
ColumnFormat=1

[.Column.СКЛАД1]
Caption=СКЛАД
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДПОСТАВ]
Caption=КОДПОСТАВ
Width=200
Visible=0
ColumnFormat=1

[.Column.СЧЕТСУБ]
Caption=СЧЕТСУБ
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДАН]
Caption=КОДАН
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМЕРДОКУМЕНТА]
Caption=НОМЕРДОКУМЕНТА
Width=200
Visible=0
ColumnFormat=1

[.Column.строка10]
Caption=строка10
Width=200
Visible=0
ColumnFormat=1

[.Column.строка11]
Caption=строка11
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

[.Column.ФИО3.Имя]
Caption=ФИО3
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО4.Имя]
Caption=ФИО4
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

[.Column.ФИО6.Имя]
Caption=ФИО6
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТА1]
Caption=ДАТА1
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА2]
Caption=ДАТА2
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА3]
Caption=ДАТА3
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА4]
Caption=ДАТА4
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА5]
Caption=ДАТА5
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА6]
Caption=ДАТА6
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.КомАкт]
Caption=КомАкт
Width=200
Visible=0
ColumnFormat=1

[ПОЗИЦИИ1.Options]
Caption=ПОЗИЦИИ1
ColumnCount=8
Column:0=ОТМЕТКА
Column:1=КОЛМЕСТ
Column:2=ВИД
Column:3=НАИМКОНТЕЙНЕРОВ
Column:4=ЕДИЗМ
Column:5=МАССАОТП
Column:6=ОТМЕТКАОТПР
Column:7=МАССАДОРОГИ

[ПОЗИЦИИ1.Column.ОТМЕТКА]
Caption=Отметка
Width=100

[ПОЗИЦИИ1.Column.КОЛМЕСТ]
Caption=Кол-во мест
Width=100
Alignment=1

[ПОЗИЦИИ1.Column.ВИД]
Caption=Вид
Width=100

[ПОЗИЦИИ1.Column.НАИМКОНТЕЙНЕРОВ]
Caption=Наименование
Width=100

[ПОЗИЦИИ1.Column.ЕДИЗМ]
Caption=Ед.изм.
Width=100

[ПОЗИЦИИ1.Column.МАССАОТП]
Caption=Масса
Width=100
Alignment=1

[ПОЗИЦИИ1.Column.ОТМЕТКАОТПР]
Caption=Отметка отправителя
Width=100

[ПОЗИЦИИ1.Column.МАССАДОРОГИ]
Caption=МАССАДОРОГИ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ2.Options]
Caption=ПОЗИЦИИ2
AlignSize=50
ColumnCount=4
Column:0=ВРЕМЯПРИБ
Column:1=ВРЕМЯВЫДАЧИ
Column:2=ВРЕМЯВСКРЫТИЯ
Column:3=ВРЕМЯДОСТАВКИ

[ПОЗИЦИИ2.Column.ВРЕМЯПРИБ]
Caption=Время прибытия
Width=100

[ПОЗИЦИИ2.Column.ВРЕМЯВЫДАЧИ]
Caption=Время выдачи
Width=100

[ПОЗИЦИИ2.Column.ВРЕМЯВСКРЫТИЯ]
Caption=Время вскрытия
Width=100

[ПОЗИЦИИ2.Column.ВРЕМЯДОСТАВКИ]
Caption=Время доставки
Width=100

[ПОЗИЦИИ_СТРОКА1.Options]
Caption=ПОЗИЦИИ_СТРОКА1
AlignSize=50
ColumnCount=1
Column:0=СЕКЦИЯ1

[ПОЗИЦИИ_СТРОКА1.Column.СЕКЦИЯ1]
Caption=СЕКЦИЯ1
Width=100

[ПОЗИЦИИ_СТРОКА2.Options]
Caption=ПОЗИЦИИ_СТРОКА2
AlignSize=50
ColumnCount=1
Column:0=СЕКЦИЯ2

[ПОЗИЦИИ_СТРОКА2.Column.СЕКЦИЯ2]
Caption=СЕКЦИЯ2
Width=100

[ПОЗИЦИИ_СТРОКА3.Options]
Caption=ПОЗИЦИИ_СТРОКА3
AlignSize=50
ColumnCount=1
Column:0=СЕКЦИЯ3

[ПОЗИЦИИ_СТРОКА3.Column.СЕКЦИЯ3]
Caption=СЕКЦИЯ3
Width=100

[ПОЗИЦИИ_СТРОКА8.Options]
Caption=ПОЗИЦИИ_СТРОКА8
AlignSize=50
ColumnCount=1
Column:0=СЕКЦИЯ8

[ПОЗИЦИИ_СТРОКА8.Column.СЕКЦИЯ8]
Caption=СЕКЦИЯ8
Width=100

[ПОЗИЦИИ3.Options]
Caption=ПОЗИЦИИ3
ColumnCount=19
Column:0=ТМЦ.Имя
Column:1=КОЛДОК
Column:2=КОБРАК
Column:3=КОЛИЗЛ
Column:4=КОЛНЕД
Column:5=КОЛФАКТ
Column:6=НАИМЕД.Имя
Column:7=НОМЕНК
Column:8=НОМЕРПАСП
Column:9=НОМЕРПОРЯДОК
Column:10=СОРТДОК
Column:11=СОРТФАКТ
Column:12=СУМБРАК
Column:13=ЦЕНАДОК
Column:14=СУММАДОК
Column:15=СУММАИЗЛ
Column:16=СУММАНЕД
Column:17=СУММАФАКТ
Column:18=ЦЕНАФАКТ

[ПОЗИЦИИ3.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ3.Column.КОЛДОК]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ3.Column.КОБРАК]
Caption=КОБРАК
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.КОЛИЗЛ]
Caption=КОЛИЗЛ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.КОЛНЕД]
Caption=КОЛНЕД
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.КОЛФАКТ]
Caption=КОЛФАКТ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.НАИМЕД.Имя]
Caption=НАИМЕД
Width=100
Visible=0
Alignment=2

[ПОЗИЦИИ3.Column.НОМЕНК]
Caption=НОМЕНК
Width=100
Visible=0

[ПОЗИЦИИ3.Column.НОМЕРПАСП]
Caption=НОМЕРПАСП
Width=100
Visible=0

[ПОЗИЦИИ3.Column.НОМЕРПОРЯДОК]
Caption=НОМЕРПОРЯДОК
Width=100
Visible=0

[ПОЗИЦИИ3.Column.СОРТДОК]
Caption=СОРТДОК
Width=100
Visible=0

[ПОЗИЦИИ3.Column.СОРТФАКТ]
Caption=СОРТФАКТ
Width=100
Visible=0

[ПОЗИЦИИ3.Column.СУМБРАК]
Caption=СУМБРАК
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.ЦЕНАДОК]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ3.Column.СУММАДОК]
Caption=Сумма
Width=100
Alignment=1

[ПОЗИЦИИ3.Column.СУММАИЗЛ]
Caption=СУММАИЗЛ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.СУММАНЕД]
Caption=СУММАНЕД
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.СУММАФАКТ]
Caption=СУММАФАКТ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ3.Column.ЦЕНАФАКТ]
Caption=ЦЕНАФАКТ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ_СТРОКА10.Options]
Caption=ПОЗИЦИИ_СТРОКА10
ColumnCount=1
Column:0=СЕКЦИЯ10

[ПОЗИЦИИ_СТРОКА10.Column.СЕКЦИЯ10]
Caption=СЕКЦИЯ10
Width=100

[ПОЗИЦИИ_СТРОКА11.Options]
Caption=ПОЗИЦИИ_СТРОКА11
ColumnCount=1
Column:0=СЕКЦИЯ11

[ПОЗИЦИИ_СТРОКА11.Column.СЕКЦИЯ11]
Caption=СЕКЦИЯ11
Width=100

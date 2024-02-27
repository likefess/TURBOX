[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ1
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-1
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=62
Column:0=ИзСистемы
Column:1=НОМЕРБУМ
Column:2=ДАТА
Column:3=РЕКВ.Имя
Column:4=Подразделение.Имя
Column:5=КАМЕРА
Column:6=СЕКЦИЯ
Column:7=ДАТАДОК
Column:8=Вид
Column:9=ФИО1.Имя
Column:10=ДАТА01
Column:11=ДАТА0
Column:12=МЕСТО
Column:13=ДАТАУСТ
Column:14=ДОКУМЕНТ1
Column:15=ДОКУМЕНТ2
Column:16=НОМЕРТЕЛЕ
Column:17=ДАТА1
Column:18=ПОСТАВЩИК.Имя
Column:19=ГРУЗООТПРАВИТЕЛЬ.Имя
Column:20=ПРОИЗВОДИТЕЛЬ
Column:21=СТРАХКОМПАНИЯ
Column:22=НОМ1
Column:23=НОМ2
Column:24=НОМ3
Column:25=НОМ4
Column:26=НОМ5
Column:27=НОМ6
Column:28=ДАТА2
Column:29=ДАТА3
Column:30=ДАТА4
Column:31=ДАТА5
Column:32=ДАТА6
Column:33=ДАТА7
Column:34=СПОСОБ
Column:35=СТАНЦИЯ
Column:36=СКЛОТПРА
Column:37=ТЕМПЕРАТУРА
Column:38=СТРОКА1
Column:39=СТРОКА2
Column:40=СТРОКА3
Column:41=СТРОКА4
Column:42=СТРОКА5
Column:43=СТРОКА6
Column:44=СТРОКА7
Column:45=СТРОКА8
Column:46=КОМИССИЯ
Column:47=ГлавБух.Имя
Column:48=ГлавБухДата
Column:49=ЗавСкладом.Имя
Column:50=ЗАКЛКОМИССИ1
Column:51=ЗАКЛКОМИССИ2
Column:52=РЕШЕНИЕРУК1
Column:53=РЕШЕНИЕРУК2
Column:54=РЕШЕНИЕРУК3
Column:55=РЕШЕНИЕРУК4
Column:56=ГОДолжность
Column:57=ГОФИО
Column:58=ГОДокумент
Column:59=ГОНомер
Column:60=ГОВыдан
Column:61=ПолучилЛистов
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=3
SubTable:0=ПОЗИЦИИ
SubTable:1=ПОЗИЦИИ2
SubTable:2=ПОЗИЦИИ3

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НОМЕРБУМ]
Caption=Номер
Width=84
ColumnFormat=1

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.РЕКВ.Имя]
Caption=Организация
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Имя]
Caption=Склад
Width=200
ColumnFormat=1

[.Column.КАМЕРА]
Caption=КАМЕРА
Width=86
Visible=0
ColumnFormat=1

[.Column.СЕКЦИЯ]
Caption=СЕКЦИЯ
Width=76
Visible=0
ColumnFormat=1

[.Column.ДАТАДОК]
Caption=ДАТАДОК
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Вид]
Caption=Вид
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

[.Column.ДАТА01]
Caption=ДАТА01
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТА0]
Caption=ДАТА0
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

[.Column.ДАТАУСТ]
Caption=ДАТАУСТ
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДОКУМЕНТ1]
Caption=ДОКУМЕНТ1
Width=200
Visible=0
ColumnFormat=1

[.Column.ДОКУМЕНТ2]
Caption=ДОКУМЕНТ2
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМЕРТЕЛЕ]
Caption=НОМЕРТЕЛЕ
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

[.Column.ПОСТАВЩИК.Имя]
Caption=Поставщик
Width=200
ColumnFormat=1

[.Column.ГРУЗООТПРАВИТЕЛЬ.Имя]
Caption=Грузоотправитель
Width=200
ColumnFormat=1

[.Column.ПРОИЗВОДИТЕЛЬ]
Caption=ПРОИЗВОДИТЕЛЬ
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРАХКОМПАНИЯ]
Caption=СТРАХКОМПАНИЯ
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ1]
Caption=НОМ1
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ2]
Caption=НОМ2
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ3]
Caption=НОМ3
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ4]
Caption=НОМ4
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ5]
Caption=НОМ5
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМ6]
Caption=НОМ6
Width=200
Visible=0
ColumnFormat=1

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

[.Column.ДАТА7]
Caption=ДАТА7
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.СПОСОБ]
Caption=СПОСОБ
Width=200
Visible=0
ColumnFormat=1

[.Column.СТАНЦИЯ]
Caption=СТАНЦИЯ
Width=200
Visible=0
ColumnFormat=1

[.Column.СКЛОТПРА]
Caption=СКЛОТПРА
Width=200
Visible=0
ColumnFormat=1

[.Column.ТЕМПЕРАТУРА]
Caption=ТЕМПЕРАТУРА
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

[.Column.СТРОКА3]
Caption=СТРОКА3
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА4]
Caption=СТРОКА4
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА5]
Caption=СТРОКА5
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА6]
Caption=СТРОКА6
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА7]
Caption=СТРОКА7
Width=200
Visible=0
ColumnFormat=1

[.Column.СТРОКА8]
Caption=СТРОКА8
Width=200
Visible=0
ColumnFormat=1

[.Column.КОМИССИЯ]
Caption=КОМИССИЯ
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ГлавБух.Имя]
Caption=ГлавБух
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ГлавБухДата]
Caption=ГлавБухДата
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ЗавСкладом.Имя]
Caption=ЗавСкладом
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ЗАКЛКОМИССИ1]
Caption=ЗАКЛКОМИССИ1
Width=200
Visible=0
ColumnFormat=1

[.Column.ЗАКЛКОМИССИ2]
Caption=ЗАКЛКОМИССИ2
Width=200
Visible=0
ColumnFormat=1

[.Column.РЕШЕНИЕРУК1]
Caption=РЕШЕНИЕРУК1
Width=200
Visible=0
ColumnFormat=1

[.Column.РЕШЕНИЕРУК2]
Caption=РЕШЕНИЕРУК2
Width=200
Visible=0
ColumnFormat=1

[.Column.РЕШЕНИЕРУК3]
Caption=РЕШЕНИЕРУК3
Width=200
Visible=0
ColumnFormat=1

[.Column.РЕШЕНИЕРУК4]
Caption=РЕШЕНИЕРУК4
Width=200
Visible=0
ColumnFormat=1

[.Column.ГОДолжность]
Caption=ГОДолжность
Width=200
Visible=0
ColumnFormat=1

[.Column.ГОФИО]
Caption=ГОФИО
Width=200
Visible=0
ColumnFormat=1

[.Column.ГОДокумент]
Caption=ГОДокумент
Width=200
Visible=0
ColumnFormat=1

[.Column.ГОНомер]
Caption=ГОНомер
Width=200
Visible=0
ColumnFormat=1

[.Column.ГОВыдан]
Caption=ГОВыдан
Width=200
Visible=0
ColumnFormat=1

[.Column.ПолучилЛистов]
Caption=ПолучилЛистов
Width=200
Visible=0
ColumnFormat=1

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=5
Column:0=прибытие
Column:1=начало
Column:2=приостановление
Column:3=возобновление
Column:4=окончание

[ПОЗИЦИИ.Column.прибытие]
Caption=Прибытие
Width=100

[ПОЗИЦИИ.Column.начало]
Caption=Начало
Width=100

[ПОЗИЦИИ.Column.приостановление]
Caption=Приостановление
Width=100

[ПОЗИЦИИ.Column.возобновление]
Caption=Возобновление
Width=100

[ПОЗИЦИИ.Column.окончание]
Caption=Окончание
Width=100

[ПОЗИЦИИ2.Options]
Caption=ПОЗИЦИИ2
ColumnCount=3
Column:0=ТМЦ.Имя
Column:1=кол
Column:2=стоимость

[ПОЗИЦИИ2.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ2.Column.кол]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ2.Column.стоимость]
Caption=Стоимость
Width=100
Alignment=1

[ПОЗИЦИИ3.Options]
Caption=ПОЗИЦИИ3
ColumnCount=1
Column:0=строка10

[ПОЗИЦИИ3.Column.строка10]
Caption=Строка10
Width=100

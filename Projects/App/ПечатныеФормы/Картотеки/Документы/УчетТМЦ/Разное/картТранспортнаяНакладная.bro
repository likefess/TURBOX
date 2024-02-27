[Options]
Version=7
Query=.УчетТМЦ.Разное.ТранспортнаяНакладная
CanHGroupModify=0
OrderBy=РЕКВ.Имя+
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Склад.Транспортная накладная
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=16
Column:0=ИзСистемы
Column:1=CreateDate
Column:2=CreateUser
Column:3=UpdateDate
Column:4=UpdateUser
Column:5=НОМЕРБУМ
Column:6=ДАТА
Column:7=Рекв.Имя
Column:8=ГрузоПолучатель.Имя
Column:9=ФИОТелОтвОтпр
Column:10=ФИОТелОтвПолуч
Column:11=АдресПогрузки
Column:12=АдресВыгрузки
Column:13=Перевозчик.Имя
Column:14=ФИОТелПеревозчика
Column:15=ФИОТелВодителя
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

[.Column.CreateDate]
Caption=Дата создания
Width=120
Visible=0
Alignment=2

[.Column.CreateUser]
Caption=Создал
Width=120
Visible=0

[.Column.UpdateDate]
Caption=Дата изменения
Width=120
Visible=0
Alignment=2

[.Column.UpdateUser]
Caption=Изменил
Width=120
Visible=0

[.Column.НОМЕРБУМ]
Caption=Номер документа
Width=110
ColumnFormat=1

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Рекв.Имя]
Caption=Грузоотправитель
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ГрузоПолучатель.Имя]
Caption=Грузополучатель
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИОТелОтвОтпр]
Caption=Отв.отпр.
Width=100

[.Column.ФИОТелОтвПолуч]
Caption=Отв.получ.
Width=100

[.Column.АдресПогрузки]
Caption=Адрес погрузки
Width=200
Visible=0
ColumnFormat=1

[.Column.АдресВыгрузки]
Caption=Адрес выгрузки
Width=200
Visible=0
ColumnFormat=1

[.Column.Перевозчик.Имя]
Caption=Перевозчик
Width=100

[.Column.ФИОТелПеревозчика]
Caption=Отв.перевоз.
Width=100

[.Column.ФИОТелВодителя]
Caption=Водитель
Width=100

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=4
Column:0=ТМЦ.Имя
Column:1=МАССА
Column:2=МЕСТ
Column:3=УПАК

[ПОЗИЦИИ.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ.Column.МАССА]
Caption=МАССА
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.МЕСТ]
Caption=МЕСТ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ.Column.УПАК]
Caption=УПАК
Width=100
Visible=0

[ПОЗИЦИИ1.Options]
Caption=ПОЗИЦИИ1
ColumnCount=0

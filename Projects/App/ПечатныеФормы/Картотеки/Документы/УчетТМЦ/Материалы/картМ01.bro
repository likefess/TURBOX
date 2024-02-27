[Options]
Version=7
Query=.УчетТМЦ.Материалы.М1
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Материалы.М-1
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=15
Column:0=ДАТА
Column:1=НОМЕРБУМ
Column:2=РЕКВ.Имя
Column:3=СКЛАД.Имя
Column:4=ОТПУСТИЛ
Column:5=ПОЛУЧИЛ
Column:6=ФИОЗАТР
Column:7=ФИОРАЗ
Column:8=КОММЕНТАРИЙ
Column:9=ВАЛЮТА
Column:10=ОСНОВАНИЕ
Column:11=КОРСЧЕТ
Column:12=АНСЧЕТ
Column:13=ОТПУСТИЛ.Имя
Column:14=ПОЛУЧИЛ.Имя
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=ПОЗИЦИИ

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

[.Column.СКЛАД.Имя]
Caption=Склад
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ОТПУСТИЛ]
Caption=ФИО лица, отпустившего материалы
Width=100
Visible=0
Alignment=2

[.Column.ПОЛУЧИЛ]
Caption=ФИО лица, принявшего материалы
Width=100
Visible=0
Alignment=2

[.Column.ФИОЗАТР]
Caption=ФИО лица, затребовавшего материалы
Width=100
Visible=0
Alignment=2

[.Column.ФИОРАЗ]
Caption=ФИО лица, разрешившего отпустить материалы
Width=100
Visible=0
Alignment=2

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

[.Column.ОТПУСТИЛ.Имя]
Caption=ОТПУСТИЛ
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПОЛУЧИЛ.Имя]
Caption=ПОЛУЧИЛ
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=6
Column:0=ДатаПоз
Column:1=ТМЦ.Имя
Column:2=ЕДИЗМ.Имя
Column:3=КОЛИЧ
Column:4=ЦЕНА
Column:5=Сумма

[ПОЗИЦИИ.Column.ДатаПоз]
Caption=дата
Width=100
Visible=0

[ПОЗИЦИИ.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ.Column.ЕДИЗМ.Имя]
Caption=единица измерения
Width=100
Visible=0
Alignment=2

[ПОЗИЦИИ.Column.КОЛИЧ]
Caption=Кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ.Column.Сумма]
Caption=Сумма
Width=100
Alignment=1

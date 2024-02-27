[Options]
Version=7
Query=.УчетТМЦ.Инвентаризация.Инв22
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Инвентаризация.Приказ об инвентаризации
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=7
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=Подлежит1
Column:5=ДАТАИНВ
Column:6=ДАТАКОНИНВ
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

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

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подлежит1]
Caption=Инвентаризации подлежит
Width=200
ColumnFormat=1

[.Column.ДАТАИНВ]
Caption=К инвентаризации приступить
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТАКОНИНВ]
Caption=Окончить инвентаризацию
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[Options]
Version=7
Query=.УчетТМЦ.Инвентаризация.Инв19
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Инвентаризация.ИНВ-19
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=5
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=РЕКВ.Имя
Column:4=СКЛАД.Имя
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
Width=200
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
ColumnFormat=1

[ПОЗИЦИИ.Options]
Caption=ПОЗИЦИИ
ColumnCount=5
Column:0=ТМЦ.Имя
Column:1=ИЗЛИШЕККОЛ
Column:2=ИЗЛИШЕКСУММА
Column:3=НЕДОСТАЧАКОЛ
Column:4=НЕДОСТАЧАСУММА

[ПОЗИЦИИ.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[ПОЗИЦИИ.Column.ИЗЛИШЕККОЛ]
Caption=Излишек кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.ИЗЛИШЕКСУММА]
Caption=Излишек сумма
Width=100
Alignment=1

[ПОЗИЦИИ.Column.НЕДОСТАЧАКОЛ]
Caption=Недостача кол-во
Width=100
Alignment=1

[ПОЗИЦИИ.Column.НЕДОСТАЧАСУММА]
Caption=Недостача сумма
Width=100
Alignment=1

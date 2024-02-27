[Options]
Version=7
Query=.УчетТМЦ.Разное.Акт_Вып
CanHGroupModify=0
OrderBy=ДАТА
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Акт выполненных работ услуг
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
Column:3=Исполнитель_1
Column:4=Заказчик_1
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
Width=111
ColumnFormat=1

[.Column.Исполнитель_1]
Caption=Исполнитель
Width=200
ColumnFormat=1

[.Column.Заказчик_1]
Caption=Заказчик
Width=200
ColumnFormat=1

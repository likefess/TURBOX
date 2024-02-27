[Options]
Version=7
Query=.УчетТМЦ.Разное.СкладскойОрдер
CanHGroupModify=0
OrderBy=Дата
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Склад.Складской ордер
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=9
Column:0=ИзСистемы
Column:1=Рекв.Имя
Column:2=НомерБум
Column:3=Дата
Column:4=РеквП.Имя
Column:5=МОЛФИО
Column:6=Склад
Column:7=Основание
Column:8=Примечание
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

[.Column.Рекв.Имя]
Caption=Рекв
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.НомерБум]
Caption=НомерБум
Width=200
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.РеквП.Имя]
Caption=РеквП
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.МОЛФИО]
Caption=МОЛФИО
Width=200
ColumnFormat=1

[.Column.Склад]
Caption=Склад
Width=200
ColumnFormat=1

[.Column.Основание]
Caption=Основание
Width=200
ColumnFormat=1

[.Column.Примечание]
Caption=Примечание
Width=200
ColumnFormat=1

[Позиции.Options]
Caption=Табличная часть ордера
CanInplace=1
ColumnCount=8
Column:0=Ресурс.Имя
Column:1=Колич
Column:2=ВидУпак
Column:3=Мест
Column:4=ВМесте
Column:5=ЕдИзм
Column:6=Цена
Column:7=Примечан

[Позиции.Column.Ресурс.Имя]
Caption=Ресурс
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Колич]
Caption=Колич
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.ВидУпак]
Caption=ВидУпак
Width=160
ColumnFormat=1

[Позиции.Column.Мест]
Caption=Мест
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.ВМесте]
Caption=ВМесте
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.ЕдИзм]
Caption=ЕдИзм
Width=200
ColumnFormat=1

[Позиции.Column.Цена]
Caption=Цена
Width=80
Alignment=1
ColumnFormat=2

[Позиции.Column.Примечан]
Caption=Примечан
Width=200
ColumnFormat=1

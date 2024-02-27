[Options]
Version=7
Query=Biz.Ref.IDType
MBlank=.Классификаторы.редВидДокумента
HierarchicalField=Имя
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnModify=картотека_ПриИзменении
OrderBy=Код
CanCopy=1
HelpContext=.Бухгалтерия.Справочники.Операции выполняемые при работе со справочниками
ColumnCount=6
Column:0=Код
Column:1=Имя
Column:2=КодПФР
Column:3=Комментарий
Column:4=ШаблонФНС
Column:5=Closed
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Код]
Caption=Код МНС
Width=80
Alignment=2
ColumnFormat=1

[.Column.Имя]
Caption=Наименование
Width=0
MinWidth=150
ColumnFormat=1

[.Column.КодПФР]
Caption=Код ПФР
Width=200
Visible=0
ColumnFormat=1

[.Column.Комментарий]
Caption=Комментарий
Width=200
Visible=0
ColumnFormat=1

[.Column.ШаблонФНС]
Caption=Шаблон
Width=200
Visible=0
ColumnFormat=1

[.Column.Closed]
Caption=Отменен
Width=60
Visible=0
Alignment=2
ColumnFormat=4
Format=+

[Options]
Version=7
Query=Bas.Data.Entity
Filter=Подразделение
HierarchicalField=Имя
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ShowCount=0
CanCopy=1
HelpContext=.Бухгалтерия.Справочники.Подразделения
OnRearrange=картотека_ПриОформлении
ColumnCount=13
Column:0=Завершен
Column:1=Код
Column:2=Имя
Column:3=Субъект.Имя
Column:4=ЕНВД
Column:5=СчетПоУмолчанию
Column:6=Реквизиты
Column:7=Сдаем
Column:8=АдресНИ
Column:9=Адрес
Column:10=Телефон
Column:11=ЭтоСклад
Column:12=Ответственный.Имя
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Завершен]
Caption=Завершен
Hint=Флаг завершенности работы с объектом
Width=60
Visible=0
Alignment=2
ColumnFormat=4
OnDraw=Столбец_ПриРисовании

[.Column.Код]
Caption=Код
Width=86
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.Имя]
Caption=Наименование
Width=161
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.Субъект.Имя]
Caption=Организация
Width=200

[.Column.ЕНВД]
Caption=Вмененка
Width=80
Visible=0
Alignment=2
ColumnFormat=4

[.Column.СчетПоУмолчанию]
Caption=Счет
Width=50
Visible=0
ColumnFormat=1

[.Column.Реквизиты]
Caption=Реквизиты
Width=74
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Сдаем]
Caption=Сдаем
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.АдресНИ]
Caption=АдресНИ
Width=88
Visible=0
ColumnFormat=1

[.Column.Адрес]
Caption=Адрес
Width=200
ColumnFormat=1

[.Column.Телефон]
Caption=Телефон
Width=138
ColumnFormat=1

[.Column.ЭтоСклад]
Caption=Склад
Width=80
Visible=0
Alignment=2
ColumnFormat=4

[.Column.Ответственный.Имя]
Caption=Ответственный
Width=106
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

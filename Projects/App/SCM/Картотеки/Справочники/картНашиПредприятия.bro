[Options]
Version=7
Query=Bas.Data.Entity
Filter=Наше
HierarchicalField=Имя
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ShowCount=0
CanCopy=1
HelpContext=.Бухгалтерия.Справочники.Контрагенты
OnRearrange=картотека_ПриОформлении
ColumnCount=11
Column:0=Завершен
Column:1=Код
Column:2=Имя
Column:3=Наше
Column:4=КраткоеИмя
Column:5=Нерезидент
Column:6=ТипКонтрагента
Column:7=ПолнИмя
Column:8=ИНН
Column:9=КодПричины
Column:10=Телефон
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
Width=200
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.Имя]
Caption=Имя
Width=200
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.Наше]
Caption=Наше
Width=50
Visible=0
Alignment=2
ColumnFormat=4

[.Column.КраткоеИмя]
Caption=Краткое наименование
Width=100

[.Column.Нерезидент]
Caption=Статус
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.ТипКонтрагента]
Caption=ТипКонтр
Width=65
Visible=0
Alignment=1
ColumnFormat=2

[.Column.ПолнИмя]
Caption=ПолнИмя
Width=200
Visible=0
ColumnFormat=1

[.Column.ИНН]
Caption=ИНН
Width=200
ColumnFormat=1

[.Column.КодПричины]
Caption=КПП
Width=200
ColumnFormat=1

[.Column.Телефон]
Caption=Телефон
Width=200
ColumnFormat=1

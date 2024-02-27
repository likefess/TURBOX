[Options]
Version=7
Query=Upr.Данные.УчетнаяЦена
HierarchicalField=Дата
CanEdit=0
CanHGroupModify=0
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Дата
CanInsert=0
CanMove=0
ColumnCount=5
Column:0=Дата
Column:1=ЗначенияРазрезов
Column:2=Цена
Column:3=ЦенаБезЗатратПоСтоимости
Column:4=ВалютаЦены.Code
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateVisible=0

[.Column.Дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3

[.Column.ЗначенияРазрезов]
Caption=ЗначенияРазрезов
Width=300
MinWidth=150
Visible=0

[.Column.Цена]
Caption=Цена
Width=0
MinWidth=100
Alignment=1
ColumnFormat=2

[.Column.ЦенаБезЗатратПоСтоимости]
Caption=Прямая себестоимость единицы
Width=100
MinWidth=200
Visible=0
Alignment=1

[.Column.ВалютаЦены.Code]
Caption=Валюта
Width=120
MinWidth=120

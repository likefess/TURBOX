[Options]
Version=7
Query=ПервичкаРСБУ.Банки.ПрихПлПоручения
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnModify=картотека_ПриИзменении
HelpContext=ПервичкаРСБУ.Бухгалтерия.Банковские документы.Приходные платежные поручения
ColumnCount=9
Column:0=Учитывать
Column:1=НомерБум
Column:2=ДатаДок
Column:3=Рекв.Name
Column:4=РеквБанк.Bank.Name
Column:5=РеквКонтр.Name
Column:6=КонтрБанк.Bank.Name
Column:7=Валюта.Code
Column:8=ЛимитСум
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Учитывать]
Caption=Учитывать
Width=68
Alignment=2
ColumnFormat=4

[.Column.НомерБум]
Caption=Номер
Width=78
ColumnFormat=1

[.Column.ДатаДок]
Caption=Дата
Width=83
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Рекв.Name]
Caption=Наше предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.РеквБанк.Bank.Name]
Caption=Наш банк
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.РеквКонтр.Name]
Caption=Контрагент
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.КонтрБанк.Bank.Name]
Caption=Банк контрагента
Width=200
Visible=0

[.Column.Валюта.Code]
Caption=Валюта
Width=90
ColumnFormat=1

[.Column.ЛимитСум]
Caption=Сумма
Width=90
Alignment=1
ColumnFormat=2

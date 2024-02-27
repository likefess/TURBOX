[Options]
Version=7
Query=.Касса.ПрихОрд
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Касса.Приходный ордер
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=22
Column:0=ИзСистемы
Column:1=CreateDate
Column:2=CreateUser
Column:3=UpdateDate
Column:4=UpdateUser
Column:5=DocID
Column:6=ExtID
Column:7=Замок
Column:8=НомерБум
Column:9=ДатаПроведения
Column:10=Рекв.Имя
Column:11=Подразделение.Код
Column:12=Сумма
Column:13=НДС_Ставка.Name
Column:14=НДС
Column:15=Валюта.Код
Column:16=Субъект.Имя
Column:17=СчетДебет
Column:18=Счет
Column:19=АвСчетФактура
Column:20=Бухгалтер.Имя
Column:21=Кассир.Имя
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

[.Column.CreateDate]
Caption=Дата создания
Width=120
Visible=0

[.Column.CreateUser]
Caption=Создал
Width=120
Visible=0

[.Column.UpdateDate]
Caption=Дата изменения
Width=120
Visible=0

[.Column.UpdateUser]
Caption=Изменил
Width=120
Visible=0

[.Column.DocID]
Caption=DocID
Width=80
Visible=0
Editable=0
Alignment=1

[.Column.ExtID]
Caption=ExtID
Width=120
Visible=0

[.Column.Замок]
Caption=Замок
Width=60
Alignment=2
ColumnFormat=4

[.Column.НомерБум]
Caption=Номер
Width=80
Alignment=2
ColumnFormat=1

[.Column.ДатаПроведения]
Caption=Дата проведения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Рекв.Имя]
Caption=Организация
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Код]
Caption=Подразделение
Width=200
Visible=0
ColumnFormat=1

[.Column.Сумма]
Caption=Сумма документа
Width=120
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.НДС_Ставка.Name]
Caption=Ставка НДС
Width=100

[.Column.НДС]
Caption=Сумма НДС
Width=100
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.Валюта.Код]
Caption=Валюта
Width=90
Alignment=2
ColumnFormat=1

[.Column.Субъект.Имя]
Caption=Принято от
Width=200
ColumnFormat=6
FieldCard=Rin.Данные.картСубъект
OnOutput=СубъектИмя_ПриВыводе

[.Column.СчетДебет]
Caption=Дебет
Width=90
Visible=0
ColumnFormat=1

[.Column.Счет]
Caption=Кредит
Width=90
Visible=0
ColumnFormat=1

[.Column.АвСчетФактура]
Caption=Авансовый счет-фактура
Width=100
Visible=0
Alignment=2

[.Column.Бухгалтер.Имя]
Caption=Гл. Бухгалтер
Width=100
Visible=0

[.Column.Кассир.Имя]
Caption=Кассир
Width=100
Visible=0

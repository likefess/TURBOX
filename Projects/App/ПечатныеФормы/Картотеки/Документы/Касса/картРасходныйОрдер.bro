[Options]
Version=7
Query=.Касса.РасхОрд
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Касса.Расходный ордер
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
Column:12=ВидПлатежа
Column:13=Сумма
Column:14=Валюта.Код
Column:15=Субъект.Имя
Column:16=Счет
Column:17=СчетКредит
Column:18=Основание
Column:19=Бухгалтер.Имя
Column:20=Кассир.Имя
Column:21=Руководитель.Имя
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

[.Column.ВидПлатежа]
Caption=Вид платежа
Width=100
Alignment=2

[.Column.Сумма]
Caption=Сумма документа
Width=120
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.Валюта.Код]
Caption=Валюта
Width=90
Alignment=2
ColumnFormat=1

[.Column.Субъект.Имя]
Caption=Выдано
Width=200
ColumnFormat=6
FieldCard=Rin.Данные.картСубъект
OnOutput=СубъектИмя_ПриВыводе

[.Column.Счет]
Caption=Дебет
Width=90
Visible=0
ColumnFormat=1

[.Column.СчетКредит]
Caption=Кредит
Width=90
Visible=0
ColumnFormat=1

[.Column.Основание]
Caption=Основание
Width=100
Visible=0

[.Column.Бухгалтер.Имя]
Caption=Бухгалтер
Width=100
Visible=0

[.Column.Кассир.Имя]
Caption=Кассир
Width=100
Visible=0

[.Column.Руководитель.Имя]
Caption=Руководитель
Width=100
Visible=0

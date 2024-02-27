[Options]
Version=7
Query=.УчетНДС.СчетаФактуры
Filter=СтатусУПД in [0, 1]
CanHGroupModify=0
CanCopy=1
HelpContext=.Бухгалтерия.Учет НДС.Счетфактура покупателя.Default
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=21
Column:0=ИзСистемы
Column:1=CreateDate
Column:2=CreateUser
Column:3=UpdateDate
Column:4=UpdateUser
Column:5=СуммаСНдс
Column:6=СуммаБезНдс18
Column:7=СуммаНдс18
Column:8=СуммаБезНдс0
Column:9=СуммаБезНдс10
Column:10=СуммаНдс10
Column:11=DocID
Column:12=ExtID
Column:13=ТипЗаписи
Column:14=НомерБум
Column:15=Дата
Column:16=КодВидаОперации.КодВидаОпер
Column:17=Валюта.Код
Column:18=РеквП.Имя
Column:19=Описание
Column:20=ВидФормы
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

[.Column.СуммаСНдс]
Caption=СуммаСНдс
Width=100
Visible=0
Alignment=1

[.Column.СуммаБезНдс18]
Caption=СуммаБезНдс18
Width=100
Visible=0
Alignment=1

[.Column.СуммаНдс18]
Caption=СуммаНдс18
Width=100
Visible=0
Alignment=1

[.Column.СуммаБезНдс0]
Caption=СуммаБезНдс0
Width=100
Visible=0
Alignment=1

[.Column.СуммаБезНдс10]
Caption=СуммаБезНдс10
Width=100
Visible=0
Alignment=1

[.Column.СуммаНдс10]
Caption=СуммаНдс10
Width=100
Visible=0
Alignment=1

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

[.Column.ТипЗаписи]
Caption=Тип счет-фактуры
Width=150
OnOutput=СтолбецТипЗаписи_ПриВыводе

[.Column.НомерБум]
Caption=Номер документа
Width=110
ColumnFormat=1

[.Column.Дата]
Caption=Дата документа
Width=110
Alignment=2
ColumnFormat=3

[.Column.КодВидаОперации.КодВидаОпер]
Caption=Код операции
Width=70
Alignment=2

[.Column.Валюта.Код]
Caption=Валюта
Width=65
Alignment=2

[.Column.РеквП.Имя]
Caption=Покупатель/Поставщик
Width=300

[.Column.Описание]
Caption=Описание документа
Width=300
Visible=0

[.Column.ВидФормы]
Caption=Внешний вид формы
Width=220
Editable=0
Alignment=1
ColumnFormat=5
EnumList="<Не задано>|0\x0D\x0AСчет-фактура (Пост.№914, ред.№283)|1\x0D\x0AСчет-фактура (Пост.№914, ред.№451)|2\x0D\x0AСчет-фактура (Пост.№1137)|3\x0D\x0AУниверсальный передаточный документ|4"

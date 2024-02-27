[Options]
Version=7
Query=.УчетНДС.СчетаФактуры
Filter=ТипЗаписи in [2, 3]
CanHGroupModify=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет НДС.Счет-фактура (поставщика)
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=35
Column:0=CreateDate
Column:1=CreateUser
Column:2=UpdateDate
Column:3=UpdateUser
Column:4=DocID
Column:5=ExtID
Column:6=Замок
Column:7=ИзСистемы
Column:8=НомерБум
Column:9=ДатаВычета
Column:10=ДатаПроведения
Column:11=ЖурналКом
Column:12=Дата
Column:13=КодВидаОперации.КодВидаОпер
Column:14=Рекв.Имя
Column:15=РеквП.Имя
Column:16=РеквП.ИНН
Column:17=ТипЗаписи
Column:18=Валюта.Код
Column:19=СчетДеб
Column:20=СчетКре
Column:21=СуммаСНдс
Column:22=СуммаБезНдс0
Column:23=СуммаБезНдс10
Column:24=СуммаБезНдс18
Column:25=СуммаБезНДС20
Column:26=СуммаНдс10
Column:27=СуммаНдс18
Column:28=СуммаНДС20
Column:29=КодАванса
Column:30=КомментАванс
Column:31=ДатаПоступления
Column:32=ДатаОприходования
Column:33=Страна_ГТД
Column:34=Описание
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Оплаты

[.Column.CreateDate]
Caption=Дата создания
Width=120
Visible=0
Alignment=2

[.Column.CreateUser]
Caption=Создал
Width=120
Visible=0

[.Column.UpdateDate]
Caption=Дата изменения
Width=120
Visible=0
Alignment=2

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
Width=50
Alignment=2
ColumnFormat=4
Format=+

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НомерБум]
Caption=Номер
Width=100
ColumnFormat=1

[.Column.ДатаВычета]
Caption=Дата учета
Width=90
ColumnFormat=3
Format=dd/mm/yyyy

[.Column.ДатаПроведения]
Caption=Дата проведения документа
Width=100
Visible=0

[.Column.ЖурналКом]
Caption=В журнал
Width=100
Visible=0
Alignment=2
ColumnFormat=4

[.Column.Дата]
Caption=Дата документа
Width=110
Alignment=2

[.Column.КодВидаОперации.КодВидаОпер]
Caption=Код операции
Width=70

[.Column.Рекв.Имя]
Caption=Покупатель
Width=150

[.Column.РеквП.Имя]
Caption=Поставщик
Width=150

[.Column.РеквП.ИНН]
Caption=ИНН Поставщика
Width=100
Visible=0

[.Column.ТипЗаписи]
Caption=Тип записи
Width=80
Editable=0
Alignment=1
ColumnFormat=5
EnumList=" |2\x0D\x0AАванс|3\x0D\x0AКорректирующий|20"

[.Column.Валюта.Код]
Caption=Валюта
Width=65
Alignment=2

[.Column.СчетДеб]
Caption=Счет дебета
Width=100
Visible=0

[.Column.СчетКре]
Caption=Счет кредита
Width=100
Visible=0

[.Column.СуммаСНдс]
Caption=Сумма с НДС
Width=100
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаБезНдс0]
Caption=Сумма без НДС 0%
Width=105
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаБезНдс10]
Caption=Сумма без НДС 10%
Width=110
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаБезНдс18]
Caption=Сумма без НДС 18%
Width=110
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаБезНДС20]
Caption=СуммаБезНДС20
Width=100
Visible=0
Alignment=1

[.Column.СуммаНдс10]
Caption=Сумма НДС 10%
Width=100
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаНдс18]
Caption=Сумма НДС 18%
Width=100
Visible=0
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[.Column.СуммаНДС20]
Caption=СуммаНДС20
Width=100
Visible=0
Alignment=1

[.Column.КодАванса]
Caption=Код аванса
Width=100

[.Column.КомментАванс]
Caption=Комментарий к авансу
Width=125
Visible=0

[.Column.ДатаПоступления]
Caption=Дата поступления
Width=115
Visible=0
ColumnFormat=3
Format=dd/mm/yyyy

[.Column.ДатаОприходования]
Caption=Дата оприходования
Width=120
Visible=0
ColumnFormat=3
Format=dd/mm/yyyy

[.Column.Страна_ГТД]
Caption=Страна происхождения
Width=150
Visible=0

[.Column.Описание]
Caption=Описание документа
Width=300
Visible=0

[Оплаты.Options]
Caption=Оплаты
ColumnCount=4
Column:0=НомерДокумента
Column:1=ДатаОплаты
Column:2=СуммаОплаты
Column:3=Валюта.Код

[Оплаты.Column.НомерДокумента]
Caption=Номер документа
Width=120

[Оплаты.Column.ДатаОплаты]
Caption=Дата оплаты
Width=100
Alignment=2
ColumnFormat=3
Format=dd/mm/yyyy

[Оплаты.Column.СуммаОплаты]
Caption=Сумма оплаты
Width=100
Alignment=1

[Оплаты.Column.Валюта.Код]
Caption=Валюта
Width=100
ColumnFormat=6
FieldCard=Rin.Справочники.картЕдиницаИВалюта
LookupField=Код

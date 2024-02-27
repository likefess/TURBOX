[Options]
Version=7
Query=.УчетНДС.СчетаФактуры
Filter=ТипЗаписи in [0, 1] and СтатусУПД in [0, 1]
CanHGroupModify=0
OrderBy=Дата+
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет НДС.Счет-фактура (наша)
OnClick=картотека_ПриНажатии
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
Column:9=НомерБум2
Column:10=ДатаВычета
Column:11=ДатаПроведения
Column:12=Дата
Column:13=КодВидаОперации.КодВидаОпер
Column:14=Рекв.Name
Column:15=КонтрагентКом.Name
Column:16=НашеПодразд.Name
Column:17=ГрузоОтправитель
Column:18=РеквП.Name
Column:19=ПодрКонтрагента.Name
Column:20=ГрузоПолучатель
Column:21=ТипЗаписи
Column:22=Валюта.Код
Column:23=СчетДеб
Column:24=СчетКре
Column:25=СуммаСНдс
Column:26=СуммаБезНдс0
Column:27=СуммаБезНдс10
Column:28=СуммаБезНдс18
Column:29=СуммаБезНДС20
Column:30=СуммаНдс10
Column:31=СуммаНдс18
Column:32=СуммаНДС20
Column:33=Описание
Column:34=ВидФормы
TreeWidth=193
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Позиции

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
HelpContext=ПервичкаРСБУ.УиФ.Налоговый учет.Учет НДС.Счета-фактуры наши
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

[.Column.НомерБум2]
Caption=Номер СФ
Width=100
ColumnFormat=1

[.Column.ДатаВычета]
Caption=Дата учета
Width=90

[.Column.ДатаПроведения]
Caption=Дата проведения документа
Width=100
Visible=0

[.Column.Дата]
Caption=Дата документа
Width=110
Alignment=2

[.Column.КодВидаОперации.КодВидаОпер]
Caption=Код операции
Width=70
Alignment=2

[.Column.Рекв.Name]
Caption=Наше предприятие
Width=100

[.Column.КонтрагентКом.Name]
Caption=Продавец
Width=150

[.Column.НашеПодразд.Name]
Caption=Подразделение поставщика
Width=100

[.Column.ГрузоОтправитель]
Caption=Грузоотправитель
Width=150
Visible=0

[.Column.РеквП.Name]
Caption=Покупатель
Width=100

[.Column.ПодрКонтрагента.Name]
Caption=Подразделение покупателя
Width=100

[.Column.ГрузоПолучатель]
Caption=Грузополучатель
Width=150
Visible=0

[.Column.ТипЗаписи]
Caption=Тип записи
Width=80
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AАванс|1\x0D\x0AКорректирующий|10"

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

[Позиции.Options]
Filter=ТипЭлемента in [0, 37]
Caption=Позиции
ColumnCount=8
Column:0=Ресурс.Имя
Column:1=Колич
Column:2=ЕдИзм.Имя
Column:3=Цена
Column:4=Сумма
Column:5=СтавкаНДС.Имя
Column:6=СуммаНДС
Column:7=Всего

[Позиции.Column.Ресурс.Имя]
Caption=Наименование
Width=180

[Позиции.Column.Колич]
Caption=Кол-во
Width=100
Alignment=1

[Позиции.Column.ЕдИзм.Имя]
Caption=Единица измерения
Width=50
Alignment=2

[Позиции.Column.Цена]
Caption=Цена
Width=100
Alignment=1
ColumnFormat=2
Format=0.00

[Позиции.Column.Сумма]
Caption=Сумма без налога
Width=100
Alignment=1
ColumnFormat=2
Format=0.00

[Позиции.Column.СтавкаНДС.Имя]
Caption=Ставка НДС
Width=50
ColumnFormat=2
Format=0

[Позиции.Column.СуммаНДС]
Caption=Сумма НДС
Width=100
Alignment=1
ColumnFormat=2
Format=0.00

[Позиции.Column.Всего]
Caption=Сумма всего
Width=100
Alignment=1
ColumnFormat=2
Format=0.00

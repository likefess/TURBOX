[Options]
Version=7
Query=.Документы.WCWriteOff
CanInplace=1
ColumnCount=22
Column:0=CreateDate
Column:1=CreateUser
Column:2=UpdateDate
Column:3=UpdateUser
Column:4=DocID
Column:5=ExtID
Column:6=Locked
Column:7=Closed
Column:8=Проводить
Column:9=ДатаПроведения
Column:10=TypeOperation
Column:11=Дата
Column:12=НомерБум
Column:13=Рекв.Name
Column:14=MOL.Name
Column:15=Division.Name
Column:16=Location.Name
Column:17=PostingProfile.Name
Column:18=Комментарий
Column:19=Описание
Column:20=Amount
Column:21=ВалютаДокум.Code
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=129
SubTableCount=1
SubTable:0=Позиции

[.Column.CreateDate]
Caption=Дата создания
Width=100
Visible=0

[.Column.CreateUser]
Caption=Создал
Width=100
Visible=0

[.Column.UpdateDate]
Caption=Дата изменения
Width=100
Visible=0

[.Column.UpdateUser]
Caption=Изменил
Width=100
Visible=0

[.Column.DocID]
Caption=DocID
Width=100
Visible=0
Editable=0
Alignment=1

[.Column.ExtID]
Caption=ExtID
Width=100
Visible=0

[.Column.Locked]
Caption=Замок
Width=50
Alignment=2
ColumnFormat=4
Format=+

[.Column.Closed]
Caption=Завершен
Width=50
Alignment=2
ColumnFormat=4
Format=+

[.Column.Проводить]
Caption=Проводить
Hint=Проводить документ
Width=50
Alignment=2
ColumnFormat=4
Format=+

[.Column.ДатаПроведения]
Caption=Дата проведения
Hint=Дата проведения документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.TypeOperation]
Caption=Тип операции
Hint=Тип операции
Width=65
Alignment=1
ColumnFormat=5
EnumList="Не определен\x0D\x0AВозврат\x0D\x0AСписание"

[.Column.Дата]
Caption=Дата
Hint=@Дата документа
Width=92
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НомерБум]
Caption=Номер
Hint=@Номер, на бумажном документе
Width=99
ColumnFormat=1

[.Column.Рекв.Name]
Caption=Предприятие
Hint=@Собственные реквизиты
Width=145
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.MOL.Name]
Caption=МОЛ
Hint=МОЛ
Width=108
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Division.Name]
Caption=Подразделение Откуда
Hint=Подразделение
Width=106
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Location.Name]
Caption=Склад
Hint=Склад
Width=112
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.PostingProfile.Name]
Caption=Профиль разноски СО/Сосн
Hint=Профиль разноски СО/СОсн
Width=185
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Комментарий]
Caption=Комментарий
Width=136
ColumnFormat=1

[.Column.Описание]
Caption=Описание
Hint=@Описание документа
Width=200
ColumnFormat=1

[.Column.Amount]
Caption=Сумма
Hint=Сумма
Width=80
Alignment=1
ColumnFormat=2
Format=0.00

[.Column.ВалютаДокум.Code]
Caption=Валюта
Hint=Валюта
Width=20
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
AlignSize=956
CanInplace=1
ColumnCount=16
Column:0=WC.Name
Column:1=СО.Code
Column:2=Resource.Code
Column:3=БухСчет
Column:4=Цена
Column:5=ЦенаНал
Column:6=БухКоррСчет
Column:7=НалСчет
Column:8=НалКоррСчет
Column:9=ЗабСчет
Column:10=ЗабКоррСчет
Column:11=НалогПризнакНУ.Name
Column:12=Партия.Name
Column:13=Размер.Name
Column:14=Рост.Name
Column:15=СрокНоски

[Позиции.Column.WC.Name]
Caption=Наименование
Hint=Код СО
Width=107
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.СО.Code]
Caption=Код СО
Width=60
Alignment=2

[Позиции.Column.Resource.Code]
Caption=Код ТМЦ
Hint=Код ТМЦ
Width=60
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.БухСчет]
Caption=Бух.Счет учета
Width=100

[Позиции.Column.Цена]
Caption=Цена
Width=100
Alignment=1
ColumnFormat=2
Format=0.00

[Позиции.Column.ЦенаНал]
Caption=Налоговая цена
Width=100
Alignment=1

[Позиции.Column.БухКоррСчет]
Caption=Бух. Корр.счет
Width=113

[Позиции.Column.НалСчет]
Caption=Нал.Счет учета
Width=100

[Позиции.Column.НалКоррСчет]
Caption=Нал.Корр.счет
Width=100

[Позиции.Column.ЗабСчет]
Caption=Заб.Счет учета
Width=100

[Позиции.Column.ЗабКоррСчет]
Caption=Заб.Корр.счет
Width=100

[Позиции.Column.НалогПризнакНУ.Name]
Caption=Налоговый признак
Width=100
Alignment=2

[Позиции.Column.Партия.Name]
Caption=Партия
Width=100
Alignment=2

[Позиции.Column.Размер.Name]
Caption=Размер
Width=100
Alignment=2

[Позиции.Column.Рост.Name]
Caption=Рост
Width=100
Alignment=2

[Позиции.Column.СрокНоски]
Caption=Срок носки
Width=100
Alignment=1

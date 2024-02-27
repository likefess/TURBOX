[Options]
Version=7
Query=.Документы.СОВводВЭкспл
HierarchicalField=НомерБум
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Дата+,НомерБум+
ColumnCount=18
Column:0=CreateDate
Column:1=CreateUser
Column:2=UpdateDate
Column:3=UpdateUser
Column:4=DocID
Column:5=ExtID
Column:6=Locked
Column:7=Проводить
Column:8=ДатаПроведения
Column:9=Дата
Column:10=НомерБум
Column:11=Рекв.Name
Column:12=MOL.Name
Column:13=Location.Name
Column:14=Комментарий
Column:15=Описание
Column:16=Amount
Column:17=ВалютаДокум.Code
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
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
Width=58
Visible=0

[.Column.Locked]
Caption=Замок
Width=50
Alignment=2
ColumnFormat=4
Format=+

[.Column.Проводить]
Caption=Проводить
Hint=Проводить документ
Width=45
Alignment=2
ColumnFormat=4

[.Column.ДатаПроведения]
Caption=Дата проведения
Hint=Дата проведения документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Дата]
Caption=Дата
Hint=@Дата документа
Width=76
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НомерБум]
Caption=Номер
Hint=@Номер, на бумажном документе
Width=73
ColumnFormat=1

[.Column.Рекв.Name]
Caption=Предприятие
Hint=@Собственные реквизиты
Width=152
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.MOL.Name]
Caption=МОЛ
Hint=МОЛ
Width=167
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Location.Name]
Caption=Склад
Hint=Склад
Width=143
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Комментарий]
Caption=Комментарий
Width=153
ColumnFormat=1

[.Column.Описание]
Caption=Описание
Hint=@Описание документа
Width=139
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
Width=161
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Options]
Caption=Позиции
CanInplace=1
ColumnCount=13
Column:0=WC.Name
Column:1=СО.Code
Column:2=Resource.Code
Column:3=Price
Column:4=Party.Name
Column:5=Buh_Account
Column:6=Buh_AccountCorr
Column:7=Tax_Account
Column:8=Tax_AccountCorr
Column:9=OffBal_Account
Column:10=OffBal_AccountCorr
Column:11=Size.Name
Column:12=Height.Name

[Позиции.Column.WC.Name]
Caption=Наименование
Hint=Код СО
Width=107
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.СО.Code]
Caption=Код СО
Width=100
Alignment=2

[Позиции.Column.Resource.Code]
Caption=Код ТМЦ
Hint=Код ТМЦ
Width=137
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Price]
Caption=Цена
Hint=Цена
Width=80
Alignment=1
ColumnFormat=2
Format=0.00

[Позиции.Column.Party.Name]
Caption=Партия
Hint=Партия
Width=122
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Buh_Account]
Caption=Бух. Счет
Hint=Бух.Учет. Счет учета
Width=70
ColumnFormat=1

[Позиции.Column.Buh_AccountCorr]
Caption=Бух. Кор.Счет
Hint=Бух.Учет. Корр.счет
Width=70
ColumnFormat=1

[Позиции.Column.Tax_Account]
Caption=Налог. Счет
Hint=Нал.Учет. Счет учета
Width=70
ColumnFormat=1

[Позиции.Column.Tax_AccountCorr]
Caption=Налог. Кор.Счет
Hint=Нал.Учет. Корр.счет
Width=70
ColumnFormat=1

[Позиции.Column.OffBal_Account]
Caption=Забал. Счет
Hint=Заб.Учет. Счет учета
Width=70
ColumnFormat=1

[Позиции.Column.OffBal_AccountCorr]
Caption=Забал. Кор.Счет
Hint=Заб.Учет. Корр.счет
Width=75
ColumnFormat=1

[Позиции.Column.Size.Name]
Caption=Размер
Hint=Размер
Width=85
Lookup=1
ColumnFormat=6
ManualEdit=1

[Позиции.Column.Height.Name]
Caption=Рост
Hint=Рост
Width=85
Lookup=1
ColumnFormat=6
ManualEdit=1

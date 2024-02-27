[Options]
Version=7
Query=.Doc.AccrualOfDebt
HierarchicalField=Name
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=8
Column:0=Company.Name
Column:1=DateDoc
Column:2=NumberDoc
Column:3=TypeOfAcc
Column:4=Contraparty.Name
Column:5=Contract.Code
Column:6=Currency.Code
Column:7=SumDoc
TreeVisible=1
TreeWidth=325
SubTableWidth=100
SubTableHeight=100

[.Column.Company.Name]
Caption=Предприятие
Width=100
ColumnFormat=6
LookupField=Name

[.Column.DateDoc]
Caption=Дата документа
Width=100
ColumnFormat=3

[.Column.NumberDoc]
Caption=Номер
Width=100

[.Column.TypeOfAcc]
Caption=Тип начисления
Width=100
Lookup=1
Alignment=1
ColumnFormat=5
EnumList="Расчеты с поставщиками|0\x0D\x0AРасчеты с покупателями|1\x0D\x0AРасчеты по налогам|2\x0D\x0AРасчеты с персоналом (зарплата)|3\x0D\x0AРасчеты с персоналом (ав. отчеты)|4\x0D\x0AРасчеты с прочими дебиторами|5\x0D\x0AРасчеты с прочими кредиторами|6"

[.Column.Contraparty.Name]
Caption=Контрагент
Width=100
ColumnFormat=6
LookupField=Name

[.Column.Contract.Code]
Caption=Договор
Width=100
ColumnFormat=6
LookupField=Code

[.Column.Currency.Code]
Caption=Валюта
Width=100
ColumnFormat=6
LookupField=Code

[.Column.SumDoc]
Caption=Сумма по документу
Width=100
Alignment=1
ColumnFormat=2

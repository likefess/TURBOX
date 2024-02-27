[Options]
Version=7
Query=.Doc.CancelOfDebt
HierarchicalField=Name
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=6
Column:0=Company.Name
Column:1=DateDoc
Column:2=NumberDoc
Column:3=Currency.Code
Column:4=DocAccrualOfDebt.Name
Column:5=SumDoc
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

[.Column.Currency.Code]
Caption=Валюта
Width=100
ColumnFormat=6
LookupField=Code

[.Column.DocAccrualOfDebt.Name]
Caption=Докумет задолженности
Width=100

[.Column.SumDoc]
Caption=Сумма по документу
Width=100
Alignment=1
ColumnFormat=2

[Options]
Version=7
Query=.Doc.OffsetOfAdvance
HierarchicalField=Name
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=9
Column:0=Accounted
Column:1=Locked
Column:2=Closed
Column:3=Company.Name
Column:4=DateDoc
Column:5=NumberDoc
Column:6=AccDate
Column:7=DocPaymentOfDebt.Name
Column:8=DocAccrualOfDebt.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Accounted]
Caption=Проведен
Hint=@SubjectPayable:Accounted=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Locked]
Caption=Locked
Width=50
Alignment=2
ColumnFormat=4

[.Column.Closed]
Caption=Closed
Width=50
Alignment=2
ColumnFormat=4

[.Column.Company.Name]
Caption=Предприятие
Hint=@SubjectPayable:Company=Предприятие
Width=87
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.DateDoc]
Caption=Дата документа
Hint=@SubjectPayable:DateDoc=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.NumberDoc]
Caption=Номер документа
Hint=@SubjectPayable:Contraparty=Контрагент
Width=67
ColumnFormat=1

[.Column.AccDate]
Caption=Дата зачета аванса
Hint=@SubjectPayable:AccDate=Дата проведения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.DocPaymentOfDebt.Name]
Caption=Документ оплаты
Hint=@OffsetOfAdvance:DocPaymentOfDebt=Документ оплаты
Width=148
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.DocAccrualOfDebt.Name]
Caption=Документ обязательства
Hint=@SettlementOfDebt:DocAccrualOfDebt=Документ обязательства
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Options]
Version=7
Query=.Doc.PlanOfDebtAdj
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=14
Column:0=Locked
Column:1=Closed
Column:2=Name
Column:3=DateDoc
Column:4=NumberDoc
Column:5=Company.Name
Column:6=Currency.Name
Column:7=SumDoc
Column:8=SumBase
Column:9=ExchRate
Column:10=Accounted
Column:11=AccDate
Column:12=TaxCBC.Name
Column:13=PlanOfDebt.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

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

[.Column.Name]
Caption=Name
Width=200
ColumnFormat=1

[.Column.DateDoc]
Caption=@SubjectPayable:DateDoc=Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.NumberDoc]
Caption=@SubjectPayable:Number=Номер
Width=200
ColumnFormat=1

[.Column.Company.Name]
Caption=@SubjectPayable:Company=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Currency.Name]
Caption=@SubjectPayable:Currency=Валюта
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.SumDoc]
Caption=@SubjectPayable:SumDoc=Сумма по документу
Width=80
Alignment=1
ColumnFormat=2

[.Column.SumBase]
Caption=@SubjectPayable:SumBase=Сумма в базовой валюте
Width=80
Alignment=1
ColumnFormat=2

[.Column.ExchRate]
Caption=@SubjectPayable:ExchRate=Курс пересчета
Width=80
Alignment=1
ColumnFormat=2

[.Column.Accounted]
Caption=@SubjectPayable:Accounted=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.AccDate]
Caption=@SubjectPayable:AccDate=Дата проведения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.TaxCBC.Name]
Caption=@SubjectPayable:TaxCBC=КБК
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.PlanOfDebt.Name]
Caption=@SubjectPayable:PlanOfDebt=Задолженность План
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

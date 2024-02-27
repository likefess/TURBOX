[Options]
Version=7
Query=.Doc.RevaluationOfDebt
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=9
Column:0=Locked
Column:1=Closed
Column:2=Company.Name
Column:3=DateDoc
Column:4=NumberDoc
Column:5=Currency.Name
Column:6=ExchRate
Column:7=Accounted
Column:8=AccDate
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Locked]
Caption=Замок
Width=50
Alignment=2
ColumnFormat=4

[.Column.Closed]
Caption=Закрыт
Width=50
Alignment=2
ColumnFormat=4

[.Column.Company.Name]
Caption=Предприятие
Hint=@SubjectPayable:Company=Предприятие
Width=85
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
Hint=@SubjectPayable:Number=Номер
Width=81
ColumnFormat=1

[.Column.Currency.Name]
Caption=Валюта
Hint=@SubjectPayable:Currency=Валюта
Width=59
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ExchRate]
Caption=Курс переоценки
Hint=@SubjectPayable:ExchRate=Курс пересчета
Width=80
Alignment=1
ColumnFormat=2

[.Column.Accounted]
Caption=Проведен
Hint=@SubjectPayable:Accounted=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.AccDate]
Caption=Дата переоценки
Hint=@SubjectPayable:AccDate=Дата проведения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

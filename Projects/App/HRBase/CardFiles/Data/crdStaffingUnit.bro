[Options]
Version=7
Query=.Data.StaffingUnit
Hierarchical=1
CanInplace=1
ColumnCount=9
Column:0=Closed
Column:1=Code
Column:2=Name
Column:3=ToTrans
Column:4=Company.Name
Column:5=Division.Name
Column:6=Position.Name
Column:7=DateOpen
Column:8=DateClosed
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Closed]
Caption=Closed
Width=50
Alignment=2
ColumnFormat=4

[.Column.Code]
Caption=Code
Width=95
ColumnFormat=1

[.Column.Name]
Caption=Name
Width=200
ColumnFormat=1

[.Column.ToTrans]
Caption=ToTrans
Hint=@StaffingUnit:ToTrans=Проводить
Width=50
Alignment=2
ColumnFormat=4

[.Column.Company.Name]
Caption=Company
Hint=@StaffingUnit:Company=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Division.Name]
Caption=Division
Hint=@StaffingUnit:Division=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Position.Name]
Caption=Position
Hint=@StaffingUnit:Position=Должность
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.DateOpen]
Caption=DateOpen
Hint=@StaffingUnit:DateOpen=Дата начала
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.DateClosed]
Caption=DateClosed
Hint=@StaffingUnit:DateClosed=Закрыто
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

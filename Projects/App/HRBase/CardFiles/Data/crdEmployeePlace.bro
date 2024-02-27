[Options]
Version=7
Query=.Data.EmployeePlace
Hierarchical=1
CanInplace=1
ColumnCount=9
Column:0=Code
Column:1=Name
Column:2=EmplNumber
Column:3=Person.Name
Column:4=Company.Name
Column:5=Division.Name
Column:6=Position.Name
Column:7=HireDate
Column:8=FireDate
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Code
Width=94
ColumnFormat=1

[.Column.Name]
Caption=Name
Width=121
ColumnFormat=1

[.Column.EmplNumber]
Caption=EmplNumber
Hint=@EmployeePlace:EmplNumber=Таб. номер
Width=109
ColumnFormat=1

[.Column.Person.Name]
Caption=Person
Hint=@EmployeePlace:Person=Физ. лицо
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Company.Name]
Caption=Company
Hint=@EmployeePlace:Company=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Division.Name]
Caption=Division
Hint=@EmployeePlace:Division=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Position.Name]
Caption=Position
Hint=@EmployeePlace:Position=Должность
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.HireDate]
Caption=HireDate
Hint=@EmployeePlace:HireDate=Дата назначения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.FireDate]
Caption=FireDate
Hint=@EmployeePlace:FireDate=Дата увольнения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

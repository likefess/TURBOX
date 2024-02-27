[Options]
Version=7
Query=.Data.StaffingUnitData
CanInplace=1
ColumnCount=5
Column:0=Locked
Column:1=StaffingUnit.Name
Column:2=ChangeDate
Column:3=DateClosed
Column:4=QtyUnit
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Locked]
Caption=Locked
Width=50
Alignment=2
ColumnFormat=4

[.Column.StaffingUnit.Name]
Caption=Вакансия
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ChangeDate]
Caption=Дата изменения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.DateClosed]
Caption=Закрыто
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.QtyUnit]
Caption=Количество
Width=80
Alignment=1
ColumnFormat=2

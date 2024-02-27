[Options]
Version=7
Query=.Ref.ConfirmStatus
CanEdit=0
CanInplace=1
CanCopy=1
ColumnCount=3
Column:0=Код
Column:1=Имя
Column:2=Цвет
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Код]
Caption=Код
Hint=Код
Width=45
ColumnFormat=1

[.Column.Имя]
Caption=Имя
Hint=Наименование
Width=85
ColumnFormat=1

[.Column.Цвет]
Caption=Цвет
Width=100
Alignment=1
OnBeforeEdit=ЦветПриВходе
OnDraw=ЦветПриРисовании

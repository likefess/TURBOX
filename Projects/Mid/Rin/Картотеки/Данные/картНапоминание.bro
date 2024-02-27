[Options]
Version=7
Query=Bas.Data.Reminder
MBlank=.Данные.редНапоминание
CanCopy=1
ColumnCount=5
Column:0=Code
Column:1=Name
Column:2=Срок
Column:3=ДатаНапоминания
Column:4=Пользователь.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=94
ColumnFormat=1

[.Column.Name]
Caption=Содержание
Width=0
ColumnFormat=1

[.Column.Срок]
Caption=Срок
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДатаНапоминания]
Caption=Напомнить
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Пользователь.Name]
Caption=Пользователь
Width=100
Visible=0
Alignment=2

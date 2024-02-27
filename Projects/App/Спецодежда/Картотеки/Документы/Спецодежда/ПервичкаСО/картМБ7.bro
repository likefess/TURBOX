[Options]
Version=7
Query=.ПервичкаСО.МБ7
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
OrderBy=Дата
CanCopy=1
ColumnCount=5
Column:0=НомерБум
Column:1=Дата
Column:2=Рекв.Name
Column:3=Подразделение.Name
Column:4=Мол.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.НомерБум]
Caption=Номер документа
Hint=@Номер, на бумажном документе
Width=100
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Рекв.Name]
Caption=Предприятие
Hint=@Собственные реквизиты
Width=149
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=@Описание документа
Width=200
ColumnFormat=1

[.Column.Мол.Name]
Caption=МОЛ
Width=100
Alignment=2

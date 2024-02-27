[Options]
Version=7
Query=.ПервичкаСО.ОС1
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
OrderBy=Дата
ShowCount=0
ColumnCount=7
Column:0=НомерБум
Column:1=Дата
Column:2=КодСО.Code
Column:3=КодСО.Name
Column:4=Рекв.Name
Column:5=Сдатчик.Имя
Column:6=Получатель.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=108
TemplateWidth=187

[.Column.НомерБум]
Caption=Номер документа
Hint=@Номер, на бумажном документе
Width=83
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.КодСО.Code]
Caption=Код СО
Width=100

[.Column.КодСО.Name]
Caption=Наименование
Width=100

[.Column.Рекв.Name]
Caption=Предприятие
Hint=@Собственные реквизиты
Width=117
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Сдатчик.Имя]
Caption=Сдатчик
Width=190
Alignment=2

[.Column.Получатель.Name]
Caption=Получатель
Width=132

[Options]
Version=7
Query=Kernel.Settings.User
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=4
Column:0=Disabled
Column:1=Name
Column:2=FullName
Column:3=Description
TreeVisible=1
TreeWidth=160
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Roles

[.Column.Disabled]
Caption=Отключен
Width=75
Visible=0
Alignment=2
ColumnFormat=4
Format=+

[.Column.Name]
Caption=Логин
Width=126
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.FullName]
Caption=Пользователь
Width=0
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Description]
Caption=Комментарий
Width=0
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[Roles.Options]
Caption=Подтаблица Roles
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=1
Column:0=Roles.Name

[Roles.Column.Roles.Name]
Caption=Права пользователя
Width=0
Editable=0
FieldCard=.УправлениеДоступом.картПраваПользователя

[Options]
Version=7
Query=Bas.Data.Entity
HierarchicalField=Name
Hierarchical=1
OrderBy=Name
ShowCount=0
CanCopy=1
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnRearrange=картотека_ПриОформлении
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=9
Column:0=Code
Column:1=AltLegalName
Column:2=Branch
Column:3=Name
Column:4=Роли
Column:5=Phone
Column:6=E_Mail
Column:7=MainAddress
Column:8=Comment
TreeVisible=1
TreeWidth=146
SubTableWidth=0
SubTableHeight=130
SubTableAlign=0
CanResizeTemplate=1

[.Column.Code]
Caption=Код
Width=119
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.AltLegalName]
Caption=Альтернативное наименование юридического лица
Width=282
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Branch]
Caption=КодФилиала
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=190
MinWidth=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Роли]
Caption=Роли
Width=206
Sortable=0
ColumnType=1
OnOutput=Роли_ПриВыводе
OnDraw=Поле_ПриРисовании

[.Column.Phone]
Caption=Телефон
Width=100
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.E_Mail]
Caption=E-mail
Width=121
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.MainAddress]
Caption=Адрес
Width=250
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Comment]
Caption=Комментарий
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

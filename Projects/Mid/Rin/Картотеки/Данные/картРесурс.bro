[Options]
Version=7
Query=Biz.Data.Resource
HierarchicalField=Name
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=FullResName
ShowCount=0
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=7
Column:0=Branch
Column:1=Code
Column:2=Name
Column:3=FullResName
Column:4=AltResName
Column:5=SKU
Column:6=MainUnit.Code
TreeVisible=1
TreeWidth=186
SubTableWidth=100
SubTableHeight=146
CanResizeTemplate=1
SubTableCount=1
SubTable:0=Certificates

[.Column.Branch]
Caption=КодФилиала
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Code]
Caption=Код
Width=123
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование кр.
Width=145
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.FullResName]
Caption=Наименование полн.
Width=136
MinWidth=100
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.AltResName]
Caption=Альтернативное наименование
Width=100
MinWidth=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.SKU]
Caption=Артикул
Width=80
MinWidth=100
Visible=0

[.Column.MainUnit.Code]
Caption=Ед. изм.
Width=59
OnDraw=Поле_ПриРисовании

[Certificates.Options]
Caption=Сертификаты
ColumnCount=1
Column:0=Certificates.Name

[Certificates.Column.Certificates.Name]
Caption=Сертификаты
Width=294

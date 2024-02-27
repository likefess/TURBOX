[Options]
Version=7
Query=Biz.Data.SerialNumber
CanEdit=0
OnMove=картотека_ПриПеремещении
OnCreateRecord=Картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Code
Column:1=Res.Name
Column:2=Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=164
ColumnFormat=1

[.Column.Res.Name]
Caption=Ресурс
Width=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Name]
Caption=Комментарий
Width=300
ColumnFormat=1

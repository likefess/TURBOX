[Options]
Version=7
Query=Biz.Ref.Brand
CanEdit=0
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=IsMeta
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=171
ColumnFormat=1

[.Column.Name]
Caption=Название
Width=442
ColumnFormat=1

[.Column.IsMeta]
Caption=Элемент СБ
Width=100
Alignment=2
ColumnFormat=4

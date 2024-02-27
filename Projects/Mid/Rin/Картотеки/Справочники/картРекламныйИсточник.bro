[Options]
Version=7
Query=Biz.Ref.AdvSource
HierarchicalField=Code
CanEdit=0
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=Comment
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=111
ColumnFormat=1

[.Column.Name]
Caption=Имя
Width=222

[.Column.Comment]
Caption=Комментарий
Width=458
Sortable=0

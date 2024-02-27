[Options]
Version=7
Query=Biz.Ref.CertCategory
HierarchicalField=Name
CanEdit=0
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Name
Column:1=Code
Column:2=Comment
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Name]
Caption=Наименование
Width=196
OnDraw=Поле_ПриРисовании

[.Column.Code]
Caption=Код
Width=110
OnValidate=Код_ПриПроверке
OnDraw=Поле_ПриРисовании

[.Column.Comment]
Caption=Комментарий
Width=0
OnDraw=Поле_ПриРисовании

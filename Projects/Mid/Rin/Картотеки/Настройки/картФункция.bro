[Options]
Version=7
Query=Bas.Config.ProcType
HierarchicalField=Name
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=2
Column:0=Code
Column:1=Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=161

[.Column.Code]
Caption=Код
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=0
OnDraw=Поле_ПриРисовании

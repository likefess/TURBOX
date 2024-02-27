[Options]
Version=7
Query=.Справочники.ВидыРазмеров
HierarchicalField=Name
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
CanInplace=1
ColumnCount=2
Column:0=Code
Column:1=Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=200
ColumnFormat=1

[.Column.Name]
Caption=Имя
Width=200
ColumnFormat=1

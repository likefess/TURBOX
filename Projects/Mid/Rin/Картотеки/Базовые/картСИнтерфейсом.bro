[Options]
Version=7
Query=Com.Base.SysFields
CanEdit=0
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
ColumnCount=2
Column:0=Branch
Column:1=Confid
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Branch]
Caption=КодФилиала
Width=200
ColumnFormat=1

[.Column.Confid]
Caption=УровеньКонфиденциальности
Width=65
Alignment=1
ColumnFormat=2

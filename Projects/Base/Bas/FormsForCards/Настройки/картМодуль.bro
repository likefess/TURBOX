[Options]
Version=7
Query=.Config.Модуль
HierarchicalField=ExtID
CanEdit=0
OnEdit=Картотека_ПриРедактировании
OnPost=Картотека_ПриЗаписи
CanInplace=1
ColumnCount=1
Column:0=ExtID
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.ExtID]
Caption=Код модуля
Width=0
ColumnFormat=1
OnValidate=ПолеМодуль_ПриПроверке

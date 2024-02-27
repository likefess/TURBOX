[Options]
Version=7
Query=Biz.Ref.Size
MBlank=.Справочники.редРазмер
HBlank=.Справочники.редРазмер
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=Картотека_ПриРедактировании
OnEdit=Картотека_ПриРедактировании
CanInplace=1
ColumnCount=7
Column:0=Code
Column:1=Name
Column:2=Basic.Basic.Code
Column:3=Basic.GroupDoc.Name
Column:4=Basic.Name
Column:5=Basic.Value
Column:6=Value
TreeVisible=1
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=10

[.Column.Code]
Caption=Код
Width=87
ColumnFormat=1

[.Column.Name]
Caption=Название
Width=194
ColumnFormat=1

[.Column.Basic.Basic.Code]
Caption=Код осн. размера
Width=100

[.Column.Basic.GroupDoc.Name]
Caption=Тип осн. размера
Width=230
Editable=0

[.Column.Basic.Name]
Caption=Осн. размер
Width=135
Lookup=1

[.Column.Basic.Value]
Caption=Числ.выраж. осн. размера
Width=181
Editable=0

[.Column.Value]
Caption=Числ. выражение
Width=100

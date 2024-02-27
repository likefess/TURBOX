[Options]
Version=7
Query=Biz.Data.Resource
Filter=БазаАналога <> nil
MBlank=Rin.Данные.редРесурс
HierarchicalField=Name
CanHGroupModify=0
CanInsert=0
CanMove=0
ColumnCount=5
Column:0=Name
Column:1=Code
Column:2=Comment
Column:3=ResType
Column:4=Изготовитель
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateWidth=121

[.Column.Name]
Caption=Имя
Width=185
ColumnFormat=1

[.Column.Code]
Caption=Код
Width=70
ColumnFormat=1

[.Column.Comment]
Caption=Комментарий
Width=200
ColumnFormat=1

[.Column.ResType]
Caption=ТипРесурса
Width=111
Alignment=1
ColumnFormat=2

[.Column.Изготовитель]
Caption=Изготовитель
Width=219
Lookup=1
ColumnFormat=6
ManualEdit=1

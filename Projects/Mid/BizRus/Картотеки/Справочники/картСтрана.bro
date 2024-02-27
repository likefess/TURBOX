[Options]
Version=7
Query=Biz.Ref.CountryOrRegion
Filter=IsCountry
HierarchicalField=Name
Hierarchical=1
ShowCount=0
CanCopy=1
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=3
Column:0=Code
Column:1=КодBIC
Column:2=Name
TreeVisible=1
TreeWidth=164
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=80
ColumnFormat=1

[.Column.КодBIC]
Caption=Код BIC
Width=200
Visible=0
ColumnFormat=1

[.Column.Name]
Caption=Название страны
Width=0
ColumnFormat=1

[Options]
Version=7
Query=Biz.Ref.Color
MBlank=.Справочники.редЦвет
HBlank=.Справочники.редЦвет
CanEdit=0
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=Картотека_ПриРедактировании
OnPost=Картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
OnClick=картотека_ПриНажатии
OnRearrange=картотека_ПриОформлении
OnDrawRow=Картотека_ПриРисованииСтроки
ColumnCount=5
Column:0=Code
Column:1=BrandCode
Column:2=Name
Column:3=РусИмя
Column:4=MainColor.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=84

[.Column.BrandCode]
Caption=Артикул
Width=98

[.Column.Name]
Caption=Название фирменное
Width=124
ColumnFormat=1

[.Column.РусИмя]
Caption=Название русское
Width=149
ColumnFormat=1

[.Column.MainColor.Name]
Caption=Основной цвет
Width=151
Lookup=1
ColumnFormat=6
ManualEdit=1

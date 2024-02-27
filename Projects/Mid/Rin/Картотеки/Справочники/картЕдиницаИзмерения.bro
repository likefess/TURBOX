[Options]
Version=7
Query=Biz.Ref.UnitOrCurrency
Filter=IsCurrency <> 1
MBlank=.Справочники.редЕдиницаИзмерения
HBlank=.Справочники.редЕдиницаИзмерения
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
ShowCount=0
HelpContext=.Бухгалтерия.Справочники.Единицы измерения.htm
OnClick=картотека_ПриНажатии
ColumnCount=6
Column:0=Code
Column:1=Name
Column:2=Accuracy
Column:3=BaseUnit.Code
Column:4=DigitalCode
Column:5=ISOCode
TreeWidth=120
SubTableWidth=0
SubTableHeight=0
SubTableAlign=0

[.Column.Code]
Caption=Код (Краткое наименование)
Width=169
Alignment=2
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=0
ColumnFormat=1

[.Column.Accuracy]
Caption=Точность
Width=100
Alignment=2

[.Column.BaseUnit.Code]
Caption=Пересчет к ...
Width=100
Alignment=2

[.Column.DigitalCode]
Caption=Цифровой код
Width=100

[.Column.ISOCode]
Caption=Код ISO
Width=100

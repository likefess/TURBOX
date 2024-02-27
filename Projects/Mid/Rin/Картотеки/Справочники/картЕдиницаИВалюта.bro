[Options]
Version=7
Query=Biz.Ref.UnitOrCurrency
MBlank=.Справочники.редЕдиницаИзмерения
HBlank=.Справочники.редЕдиницаИзмерения
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
HelpContext=.СтруктураБизнеса.ДиалогиНастроек.ЕдИзмИВалюты.СправочникВалютИЕдИзм
OnClick=картотека_ПриНажатии
ColumnCount=7
Column:0=Code
Column:1=Name
Column:2=IsCurrency
Column:3=DigitalCode
Column:4=ISOCode
Column:5=Accuracy
Column:6=BaseUnit.Code
TreeWidth=120
SubTableWidth=0
SubTableHeight=21
SubTableAlign=0

[.Column.Code]
Caption=Код (Краткое наименование)
Width=169
Alignment=2
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=163
Alignment=2
ColumnFormat=1

[.Column.IsCurrency]
Caption=Тип
Width=243
MinWidth=100
Alignment=2
ColumnFormat=5
EnumList="Ед. измерения\x0D\x0AВалюта"

[.Column.DigitalCode]
Caption=Цифровой код
Width=100

[.Column.ISOCode]
Caption=Код ISO
Width=100

[.Column.Accuracy]
Caption=Точность
Width=100
Alignment=2

[.Column.BaseUnit.Code]
Caption=Пересчет к ...
Width=100
Alignment=2

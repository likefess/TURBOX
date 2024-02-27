[Options]
Version=7
Query=Biz.Ref.Bank
HierarchicalField=Name
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=13
Column:0=Closed
Column:1=Name
Column:2=КСчет
Column:3=Country
Column:4=City
Column:5=Address
Column:6=БИК
Column:7=SWIFTCode
Column:8=LatinName
Column:9=LatinCountry
Column:10=LatinCity
Column:11=LatinAddress
Column:12=SumsDelimiter
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Closed]
Caption=Флаг завершенности работы с банком
Width=100
Alignment=2
ColumnFormat=4

[.Column.Name]
Caption=Название банка
Width=200
ColumnFormat=1

[.Column.КСчет]
Caption=Корр. счет
Width=160
ColumnFormat=1

[.Column.Country]
Caption=Страна
Width=133

[.Column.City]
Caption=Город
Width=136
ColumnFormat=1

[.Column.Address]
Caption=Адрес
Width=210

[.Column.БИК]
Caption=БИК
Width=160
ColumnFormat=1

[.Column.SWIFTCode]
Caption=SWIFT код
Width=96
ColumnFormat=1

[.Column.LatinName]
Caption=Название банка (латиницей)
Width=200
ColumnFormat=1

[.Column.LatinCountry]
Caption=Страна (латиницей)
Width=200
ColumnFormat=1

[.Column.LatinCity]
Caption=Город (латиницей)
Width=200
ColumnFormat=1

[.Column.LatinAddress]
Caption=Адрес (латиницей)
Width=200
ColumnFormat=1

[.Column.SumsDelimiter]
Caption=Разделитель сумм
Width=113

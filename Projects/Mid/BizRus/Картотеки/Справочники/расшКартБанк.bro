[Options]
Version=7
Query=Biz.Ref.Bank
MBlank=.Справочники.редБанк
HierarchicalField=Name
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OnClick=картотека_ПриНажатии
ColumnCount=14
Column:0=Closed
Column:1=Name
Column:2=КодРегионаПоОКАТО
Column:3=КСчет
Column:4=Country
Column:5=City
Column:6=Address
Column:7=БИК
Column:8=SWIFTCode
Column:9=LatinName
Column:10=LatinCountry
Column:11=LatinCity
Column:12=LatinAddress
Column:13=SumsDelimiter
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

[.Column.КодРегионаПоОКАТО]
Caption=Код региона по справочнику ОКАТО
Width=200

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

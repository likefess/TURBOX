[Options]
Version=7
Query=.Настройки.ИнтерфейснаяПанель
CanCopy=1
MBlank=.Настройки.ИнтерфейсныеПанели.редИнтерфейснаяПанель
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=КлассРеализации
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=112
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=0
ColumnFormat=1

[.Column.КлассРеализации]
Caption=Класс реализации
Width=0
Visible=0
ColumnFormat=1
OnOutput=КлассРеализации_ПриВыводе

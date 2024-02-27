[Options]
Version=7
Query=МашРек.Настройки.Реквизит
HierarchicalField=Code
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=10
Column:0=Code
Column:1=Name
Column:2=РеквизитТаблицы
Column:3=ТипЗначения
Column:4=ПолеДокумента
Column:5=ДопПолеДокумента
Column:6=Переменная
Column:7=ФормулаВычисления
Column:8=ФормулаВывода
Column:9=КлассРеализации
TreeVisible=1
TreeWidth=173
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=68
MinWidth=60
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=0
MinWidth=120
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.РеквизитТаблицы]
Caption=Табличный
Width=66
Alignment=2
ColumnFormat=4
OnDraw=Поле_ПриРисовании

[.Column.ТипЗначения]
Caption=Тип значения
Width=100
ColumnFormat=5
EnumList="Произвольный|0\x0D\x0AСтрока|1\x0D\x0AЦелый|7\x0D\x0AЧисло|2\x0D\x0AДата|3\x0D\x0AЛогический|4\x0D\x0AПеречислимый|5\x0D\x0AСсылочный|6"
OnDraw=Поле_ПриРисовании

[.Column.ПолеДокумента]
Caption=Поле документа
Width=135
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.ДопПолеДокумента]
Caption=Доп. поле
Width=100
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Переменная]
Caption=Переменная
Width=100
Alignment=2
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.ФормулаВычисления]
Caption=Вычислять по формуле
Width=164
OnDraw=Поле_ПриРисовании

[.Column.ФормулаВывода]
Caption=Формула вывода
Width=164
Visible=0
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.КлассРеализации]
Caption=Класс реализации
Width=100
Visible=0
OnOutput=КлассРеализации_ПриВыводе
OnDraw=Поле_ПриРисовании

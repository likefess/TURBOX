[Options]
Version=7
Query=Biz.Data.Resource
CanEdit=0
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnChangeGroup=CardOnChangeGroup
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
CanCopy=1
HelpContext=ТиС.Торговля.Операционные документы.Заполнение полей таблицы с перечнем ТМЦ.Групповой ввод
OnClick=картотека_ПриНажатии
ColumnCount=13
Column:0=SKU
Column:1=Code
Column:2=Name
Column:3=AltResName
Column:4=FullResName
Column:5=Колво
Column:6=MainUnit.Code
Column:7=Всего
Column:8=Резерв
Column:9=Свободно
Column:10=ПризнакРесурса.Name
Column:11=ResSize.Name
Column:12=ResColor.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.SKU]
Caption=Артикул
Width=60
Editable=0
ColumnFormat=1

[.Column.Code]
Caption=Код
Width=100
Editable=0

[.Column.Name]
Caption=Наименование
Width=88
Editable=0
ColumnFormat=1

[.Column.AltResName]
Caption=Альт. наименование
Width=100
Editable=0

[.Column.FullResName]
Caption=Полное наименование
Width=100
Editable=0

[.Column.Колво]
Caption=Количество
Width=50
Sortable=0
Alignment=1
ColumnType=1
ColumnFormat=2
Format=,##0;;-
FontName=MS Sans Serif
FontSize=8
FontColor=0
FontBkColor=65535
OnOutput=Количество_ПриВыводе
OnInput=Количество_ПриВводе

[.Column.MainUnit.Code]
Caption=Ед. изм
Width=73
Editable=0
Alignment=2

[.Column.Всего]
Caption=Всего
Width=109
Editable=0
Sortable=0
Alignment=1
ColumnType=1
ColumnFormat=2
Format=,##0.###;;-
FontName=MS Sans Serif
FontSize=8
FontColor=0
FontBkColor=-2147483633
OnOutput=ОстатокНаСкладах_ПриВыводе

[.Column.Резерв]
Caption=Резерв
Width=78
Editable=0
Sortable=0
Alignment=1
ColumnType=1
ColumnFormat=2
Format=,##0.###;;-
FontName=MS Sans Serif
FontSize=8
FontColor=0
FontBkColor=-2147483644
OnOutput=ВсяБронь_ПриВыводе

[.Column.Свободно]
Caption=Свободно
Hint=Для уточнения данных по резерву дважды щелкните по колонке
Width=100
Editable=0
Sortable=0
Alignment=1
ColumnType=1
ColumnFormat=2
Format=,##0.###;;-
FontName=MS Sans Serif
FontSize=8
FontColor=0
FontBkColor=-2147483644
OnOutput=ВсегоСвободно_ПриВыводе

[.Column.ПризнакРесурса.Name]
Caption=Тип
Width=134
Editable=0
ColumnFormat=6

[.Column.ResSize.Name]
Caption=Размер
Width=83
Editable=0
ColumnFormat=6

[.Column.ResColor.Name]
Caption=Цвет
Width=114
Editable=0
ColumnFormat=6

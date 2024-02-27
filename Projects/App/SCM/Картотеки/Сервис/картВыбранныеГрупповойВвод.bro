[Options]
Version=7
Query=Biz.Data.Resource
CanEdit=0
CanHGroupModify=0
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Name
ShowCount=0
CanInplace=1
CanInsert=0
CanMove=0
OnClick=картотека_ПриНажатии
ColumnCount=13
Column:0=SKU
Column:1=Code
Column:2=AltResName
Column:3=MainUnit.Code
Column:4=FullResName
Column:5=Name
Column:6=Колво
Column:7=Всего
Column:8=Резерв
Column:9=Свободно
Column:10=ПризнакРесурса.Name
Column:11=ResSize.Name
Column:12=ResColor.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.SKU]
Caption=Артикул
Width=100
Editable=0
ColumnFormat=1

[.Column.Code]
Caption=Код
Width=40
Editable=0

[.Column.AltResName]
Caption=Альтернативное наименование
Width=100
Editable=0

[.Column.MainUnit.Code]
Caption=Основная единица измерения
Width=100
Editable=0
Alignment=2

[.Column.FullResName]
Caption=Полное наименование
Width=100
Editable=0

[.Column.Name]
Caption=Наименование
Width=106
Editable=0
ColumnFormat=1

[.Column.Колво]
Caption=Количество
Width=79
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

[.Column.Всего]
Caption=Всего
Width=110
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
Width=80
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
Width=105
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
Width=133
Editable=0
ColumnFormat=6

[.Column.ResSize.Name]
Caption=Размер
Width=55
Editable=0
ColumnFormat=6

[.Column.ResColor.Name]
Caption=Цвет
Width=50
Editable=0
ColumnFormat=6

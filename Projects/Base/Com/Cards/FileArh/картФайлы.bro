[Options]
Version=7
Query=.Archive.File
MBlank=.FileArh.редФайл
HBlank=.FileArh.редГруппа
ActionOnType=2
Hierarchical=1
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnModify=Card_OnModify
OnClick=картотека_ПриНажатии
ColumnCount=10
Column:0=Code
Column:1=Name
Column:2=Description
Column:3=FileName
Column:4=FileTime
Column:5=FileSize
Column:6=CRC
Column:7=Hash
Column:8=Partition.Name
Column:9=StorageMethod
TreeVisible=1
TreeWidth=235
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=100
Visible=0
ColumnFormat=1

[.Column.Name]
Caption=Имя
Width=0
ColumnFormat=1

[.Column.Description]
Caption=Описание
Width=132
ColumnFormat=1

[.Column.FileName]
Caption=Имя Файла
Width=216
ColumnFormat=1

[.Column.FileTime]
Caption=Время
Width=120
Alignment=2
ColumnFormat=3
Format=dd/mm/yyyy hh:nn:ss
DateInpFmt=2

[.Column.FileSize]
Caption=Размер
Width=90
Summary=1
Alignment=1
ColumnFormat=2
Format=,##0;;-

[.Column.CRC]
Caption=CRC
Width=100
Visible=0
Alignment=2

[.Column.Hash]
Caption=Подпись
Width=45
Alignment=2
ColumnFormat=4
Format=+
OnOutput=Подпись_ПриВыводе

[.Column.Partition.Name]
Caption=Раздел
Width=100
Visible=0

[.Column.StorageMethod]
Caption=Способ хранения
Width=100
ColumnFormat=5
EnumList="Вложение|0\x0D\x0AАрхив|1\x0D\x0AСсылка|2\x0D\x0AОбщий фйал|3"

[Options]
Version=7
Query=Com.Archive.Partition
MBlank=.FileArh.редРаздел
OnModify=Card_OnModify
ColumnCount=8
Column:0=Имя
Column:1=Каталог
Column:2=МаксРазмер
Column:3=ТолькоЧтение
Column:4=Отключен
Column:5=Статистика.КоличествоФайлов
Column:6=Статистика.РазмерФайлов
Column:7=Статистика.СвободныйРазмер
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Имя]
Caption=Имя
Width=200
ColumnFormat=1

[.Column.Каталог]
Caption=Каталог
Width=0
ColumnFormat=1

[.Column.МаксРазмер]
Caption=Макс. размер
Width=90
Alignment=1
ColumnFormat=2
Format=,##0;;-

[.Column.ТолькоЧтение]
Caption=ТолькоЧтение
Width=50
Alignment=2
ColumnFormat=4

[.Column.Отключен]
Caption=Отключен
Width=50
Alignment=2
ColumnFormat=4

[.Column.Статистика.КоличествоФайлов]
Caption=Файлов
Width=90
Alignment=1
ColumnFormat=2

[.Column.Статистика.РазмерФайлов]
Caption=Занято
Width=90
Alignment=1
ColumnFormat=2
Format=,##0;;-

[.Column.Статистика.СвободныйРазмер]
Caption=Свободно
Width=90
Alignment=1
ColumnFormat=2
Format=,##0;;-

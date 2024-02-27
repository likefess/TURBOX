[Options]
Version=7
Query=Com.Archive.Attachment
CanHGroupModify=0
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnRearrange=картотека_ПриОформлении
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=2
Column:0=Code
Column:1=Name
TreeVisible=1
TreeWidth=297
SubTableVisible=1
SubTableWidth=100
SubTableHeight=152
SubTableCount=1
SubTable:0=Файлы

[.Column.Code]
Caption=Код
Hint=Код
Width=200
Visible=0
ColumnFormat=1

[.Column.Name]
Caption=Имя
Hint=Наименование
Width=0
ColumnFormat=1

[Файлы.Options]
Caption=Файлы
CanInplace=1
ColumnCount=6
Column:0=Файл.Код
Column:1=Файл.Имя
Column:2=Файл.Описание
Column:3=Файл.FullFileName
Column:4=Файл.ВремяФайла
Column:5=Файл.РазмерФайла

[Файлы.Column.Файл.Код]
Caption=Код
Width=141
Visible=0

[Файлы.Column.Файл.Имя]
Caption=Имя
Width=150

[Файлы.Column.Файл.Описание]
Caption=Описание
Width=0

[Файлы.Column.Файл.FullFileName]
Caption=Имя Файла
Width=150

[Файлы.Column.Файл.ВремяФайла]
Caption=Время
Width=120
Alignment=2
ColumnFormat=3
Format=dd/mm/yyyy hh:nn:ss

[Файлы.Column.Файл.РазмерФайла]
Caption=Размер
Width=90
Alignment=1
ColumnFormat=2
Format=,##0;;-

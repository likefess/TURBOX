[Options]
Version=7
Query=.Справочники.ТипШтрихКода
HierarchicalField=Name
CanHGroupModify=0
OnMove=картотека_ПриПеремещении
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=8
Column:0=Code
Column:1=Name
Column:2=ДлинаШтрихКода
Column:3=ШрифтНазвание
Column:4=ШрифтРазмер
Column:5=ФункцияГенерации
Column:6=ШиринаИзображения
Column:7=ВысотаИзображения
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateWidth=133

[.Column.Code]
Caption=Код
Width=53
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=85
ColumnFormat=1

[.Column.ДлинаШтрихКода]
Caption=Длина
Hint=Длина штрих-кода (количество символов)
Width=53
Alignment=1
ColumnFormat=2

[.Column.ШрифтНазвание]
Caption=Шрифт
Hint=Шрифт для печати штрих-кода (по умолчанию)
Width=101
ColumnFormat=1

[.Column.ШрифтРазмер]
Caption=Размер
Hint=Размер шрифта для отображения штрих-кода (по умолчанию)
Width=87
Alignment=1
ColumnFormat=2

[.Column.ФункцияГенерации]
Caption=Функция
Hint=Функция генерирующая строку символов для печати штрих-кода указанным шрифтом (по умолчанию)
Width=200
ColumnFormat=1

[.Column.ШиринаИзображения]
Caption=Ширина
Hint=Ширина изображения штрих-кода (по умолчанию)
Width=50
Alignment=1
ColumnFormat=2

[.Column.ВысотаИзображения]
Caption=Высота
Hint=Высота изображения штрих-кода (по умолчанию)
Width=46
Alignment=1
ColumnFormat=2

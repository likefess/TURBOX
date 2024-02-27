[Options]
Version=7
Query=BizRus.Классификаторы.КатегорияДолжностиИлиПрофессии
CanEdit=0
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanInplace=1
OnClick=картотека_ПриНажатии
OnRearrange=картотека_ПриОформлении
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=КодПозицииСписка
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=150
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=0
ColumnFormat=1

[.Column.КодПозицииСписка]
Caption=Код позиции списка
Width=150
ColumnFormat=1

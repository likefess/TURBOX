[Options]
Version=7
Query=.Настройки.КомандаУправления
MBlank=.Настройки.редКомандаУправления
HBlank=.Настройки.редКомандаУправления
HierarchicalField=Code
ActionOnType=2
Hierarchical=1
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=КлассРеализацииКоманды
TreeVisible=1
TreeWidth=120

[.Column.Code]
Caption=Название команды
Width=200
ColumnFormat=1

[.Column.Name]
Caption=Описание
Width=200

[.Column.КлассРеализацииКоманды]
Caption=Класс реализации команды
Width=200
ColumnFormat=1

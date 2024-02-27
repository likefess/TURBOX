[Options]
Version=7
Query=.Документы.ПечатьЦенников
OnModify=картотека_ПриИзменении
HelpContext=SCM.УЦП.Задания.Сервисы.Печать ценников
ColumnCount=6
Column:0=Рекв.Name
Column:1=Описание
Column:2=ДатаПостроения
Column:3=ФильтрСклад.Name
Column:4=ФильтрТМЦ.Name
Column:5=ФильтрТипЦены.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Рекв.Name]
Caption=Рекв
Hint=Собственные реквизиты
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Описание]
Caption=Описание
Hint=Описание документа
Width=200
ColumnFormat=1

[.Column.ДатаПостроения]
Caption=ДатаПостроения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ФильтрСклад.Name]
Caption=ФильтрСклад
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФильтрТМЦ.Name]
Caption=ФильтрТМЦ
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФильтрТипЦены.Name]
Caption=ФильтрТипЦены
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

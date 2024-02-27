[Options]
Version=7
Query=Bas.Appendant
MBlank=.УправлениеДоступом.редДополнительныеПрава
HBlank=.УправлениеДоступом.редГруппДополнительныхПрав
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnOpenBlank=картотека_ПриОткрытииБланка
OnPost=Картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Code
Column:1=Name
Column:2=ТипПоля
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.Code]
Caption=Наименование
Width=160
ColumnFormat=1

[.Column.Name]
Caption=Заголовок
Width=181
ColumnFormat=1

[.Column.ТипПоля]
Caption=Тип права
Width=242
Lookup=1
ColumnFormat=5
EnumList="Логическое|0\x0D\x0AСтроковое|1\x0D\x0AЦелое|2\x0D\x0AДата|3\x0D\x0AЧисло|4"
OnBeforeEdit=ТипПоля_ПриВходе
OnOutput=ТипПоля_ПриВыводе

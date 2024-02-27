[Options]
Version=7
Query=Biz.Data.IDcard
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnModify=картотека_ПриИзменении
CanCopy=1
HelpContext=.Бухгалтерия.Справочники.Удостоверение личности сотрудника
ColumnCount=9
Column:0=ФизЛицо.Имя
Column:1=ВидДокумента.Имя
Column:2=ДатаВыдачи
Column:3=ДатаОкончания
Column:4=Серия
Column:5=Номер
Column:6=Кем
Column:7=Паспорт
Column:8=Примечание
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.ФизЛицо.Имя]
Caption=ФизЛицо
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ВидДокумента.Имя]
Caption=ВидДокумента
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1
OnDraw=ВидДокумента_ПриРисовании

[.Column.ДатаВыдачи]
Caption=Дата выдачи
Width=100
Alignment=2
ColumnFormat=3
Format=dd/mm/yyyy
DateInpFmt=2
OnDraw=ДатаВыдачи_ПриРисовании

[.Column.ДатаОкончания]
Caption=Дата окончания
Width=100
Alignment=2
ColumnFormat=3
Format=dd/mm/yyyy
OnDraw=ДатаОкончания_ПриРисовании

[.Column.Серия]
Caption=Серия
Width=100
Visible=0
ColumnFormat=1

[.Column.Номер]
Caption=Номер
Width=100
Visible=0
ColumnFormat=1

[.Column.Кем]
Caption=Кем выдан
Width=200
Visible=0
ColumnFormat=1

[.Column.Паспорт]
Caption=Ручной вариант вывода паспортных данных
Width=250
Visible=0

[.Column.Примечание]
Caption=Примечание
Width=200
ColumnFormat=1

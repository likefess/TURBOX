[Options]
Version=7
Query=.Документы.СОАмортизацияНлг
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
OrderBy=ДатаПроведения
HelpContext=.УиФ.Спецодежда.Налоговый учет.Периодические задания.Амортизация СО.Амортизация СО по Налоговому учету
ColumnCount=8
Column:0=НомерБум
Column:1=Проводить
Column:2=ПроводитьНУ
Column:3=ДатаПроведения
Column:4=вычМесяц
Column:5=вычГод
Column:6=ПодраздВыбр.Name
Column:7=Рекв.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=101

[.Column.НомерБум]
Caption=Номер
Width=69
ColumnFormat=1

[.Column.Проводить]
Caption=Проводить
Width=66
Alignment=2
ColumnFormat=4

[.Column.ПроводитьНУ]
Caption=Проводить НУ
Width=82
Alignment=2
ColumnFormat=4

[.Column.ДатаПроведения]
Caption=Дата проводки
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.вычМесяц]
Caption=Месяц
Width=80
Sortable=0
Alignment=2
ColumnType=1
OnOutput=вычМесяц_ПриВыводе

[.Column.вычГод]
Caption=Год
Width=60
Sortable=0
Alignment=2
ColumnType=1
OnOutput=вычГод_ПриВыводе

[.Column.ПодраздВыбр.Name]
Caption=Подразделение
Width=152
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Рекв.Name]
Caption=Предприятие
Width=100

[Options]
Version=7
Query=.Документы.СОАмортизация
CanHGroupModify=0
ColumnCount=14
Column:0=Проводить
Column:1=ДатаПроведения
Column:2=НомерБум
Column:3=Дата
Column:4=Рекв.Name
Column:5=Описание
Column:6=Подразделение.Name
Column:7=ПериодРасчета.Name
Column:8=Комментарий
Column:9=ВалютаДокум.Code
Column:10=Аналитика
Column:11=Справочник
Column:12=ПризнакВыбр
Column:13=ПризнакВыбрТекст
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=232
SubTableCount=4
SubTable:0=Позиции
SubTable:1=ExtraFields
SubTable:2=HistoricalData
SubTable:3=ДопПараметры

[.Column.Проводить]
Caption=Проводить
Hint=Проводить документ
Width=107
Alignment=2
ColumnFormat=4
Format=+

[.Column.ДатаПроведения]
Caption=Дата проведения
Hint=Дата проведения документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НомерБум]
Caption=Номер
Hint=@Номер, на бумажном документе
Width=90
ColumnFormat=1

[.Column.Дата]
Caption=Дата
Hint=@Дата документа
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Рекв.Name]
Caption=Предприятие
Hint=@Собственные реквизиты
Width=114
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Описание]
Caption=Наименование
Hint=Наименование
Width=127
ColumnFormat=1

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПериодРасчета.Name]
Caption=Период расчета
Hint=Месяц расчета
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Комментарий]
Caption=Комментарий
Width=95
ColumnFormat=1

[.Column.ВалютаДокум.Code]
Caption=Валюта
Hint=Валюта
Width=73
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Аналитика]
Caption=Аналитика
Hint=Имя справочника для отбора
Width=88
ColumnFormat=1

[.Column.Справочник]
Caption=Справочник
Hint=Справочник для отбора
Width=96
ColumnFormat=1

[.Column.ПризнакВыбр]
Caption=ПризнакВыбр
Hint=Признак из справочника
Width=107
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ПризнакВыбрТекст]
Caption=ПризнакВыбрТекст
Hint=Имя признака из справочника
Width=111
ColumnFormat=1

[Позиции.Options]
Caption=Позиции
AlignSize=874
ColumnCount=10
Column:0=СО.Code
Column:1=СО.Name
Column:2=СтоимостьБал
Column:3=АмортизацияМес
Column:4=АмортизацияМесЕНВД
Column:5=АмортизацияВсего
Column:6=СтоимостьОст
Column:7=Подразделение.Name
Column:8=МОЛ.Name
Column:9=НалогПризнакНУ.Name

[Позиции.Column.СО.Code]
Caption=Код СО
Width=100

[Позиции.Column.СО.Name]
Caption=Наименование
Width=100

[Позиции.Column.СтоимостьБал]
Caption=Балансовая стоимость
Width=100
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.АмортизацияМес]
Caption=Амортизация за месяц
Width=134
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.АмортизацияМесЕНВД]
Caption=Амортизация за месяц ЕНВД
Width=125
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.АмортизацияВсего]
Caption=Амортизация Всего
Width=100
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.СтоимостьОст]
Caption=Остаточная стоимость
Width=100
Alignment=1
ColumnFormat=2
Format=,##0.00;;-

[Позиции.Column.Подразделение.Name]
Caption=Подразделение
Width=100

[Позиции.Column.МОЛ.Name]
Caption=МОЛ
Width=100

[Позиции.Column.НалогПризнакНУ.Name]
Caption=Налоговый признак
Width=100

[ExtraFields.Options]
Caption=ExtraFields
AlignSize=73
CanInplace=1
ColumnCount=0

[HistoricalData.Options]
Caption=HistoricalData
AlignSize=83
CanInplace=1
ColumnCount=0

[ДопПараметры.Options]
Caption=ДопПараметры
CanInplace=1
ColumnCount=0

[Options]
Version=7
Query=Upr.Данные.Процесс
CanEdit=0
ActionOnType=2
Hierarchical=1
CanHGroupModify=0
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=3
Column:0=Контрагент.Name
Column:1=Контрагент.FullLegalName
Column:2=Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
TemplateWidth=138
SubTableCount=9
SubTable:0=ExtraFields
SubTable:1=ИсторияПереходовСостояний
SubTable:2=ЛимитыПриСохраненииПроцесса
SubTable:3=ЛимитыПриПрохожденииДвижений
SubTable:4=ИзмененияВажности
SubTable:5=ИсторияИзмененияДатыВыверки
SubTable:6=Чат
SubTable:7=ПрайсЛисты
SubTable:8=Приложения

[.Column.Контрагент.Name]
Caption=Клиент
Width=178

[.Column.Контрагент.FullLegalName]
Caption=Полное имя клиента
Width=214

[.Column.Name]
Caption=Договор
Width=243

[ExtraFields.Options]
Caption=Дополнительные поля
CanInplace=1
ColumnCount=6
Column:0=AsNumeric
Column:1=AsString
Column:2=AsInteger
Column:3=AsDate
Column:4=AsLogical
Column:5=AsObject.Name

[ExtraFields.Column.AsNumeric]
Caption=ЗначениеЧисло
Width=80
Alignment=1
ColumnFormat=2

[ExtraFields.Column.AsString]
Caption=ЗначениеСтрока
Width=200
ColumnFormat=1

[ExtraFields.Column.AsInteger]
Caption=ЗначениеЦелое
Width=65
Alignment=1
ColumnFormat=2

[ExtraFields.Column.AsDate]
Caption=ЗначениеДата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ExtraFields.Column.AsLogical]
Caption=ЗначениеЛогическое
Width=50
Alignment=2
ColumnFormat=4

[ExtraFields.Column.AsObject.Name]
Caption=ЗначениеОбъект
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИсторияПереходовСостояний.Options]
Caption=История переходов состояний процесса
CanInplace=1
ColumnCount=6
Column:0=ДатаПерехода
Column:1=Примечание
Column:2=Сотрудник.Name
Column:3=СтароеСостояние.Name
Column:4=НовоеСостояние.Name
Column:5=Зафиксирован

[ИсторияПереходовСостояний.Column.ДатаПерехода]
Caption=ДатаПерехода
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ИсторияПереходовСостояний.Column.Примечание]
Caption=Примечание
Width=200
ColumnFormat=1

[ИсторияПереходовСостояний.Column.Сотрудник.Name]
Caption=Сотрудник
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИсторияПереходовСостояний.Column.СтароеСостояние.Name]
Caption=СтароеСостояние
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИсторияПереходовСостояний.Column.НовоеСостояние.Name]
Caption=НовоеСостояние
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИсторияПереходовСостояний.Column.Зафиксирован]
Caption=Зафиксирован
Width=50
Alignment=2
ColumnFormat=4

[ЛимитыПриСохраненииПроцесса.Options]
Caption=Лимиты, проверяемые при сохранении данного процесса
CanInplace=1
ColumnCount=1
Column:0=Значение.Name

[ЛимитыПриСохраненииПроцесса.Column.Значение.Name]
Caption=Значение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ЛимитыПриПрохожденииДвижений.Options]
Caption=Лимиты, проверяемые при выборе данного процесса
CanInplace=1
ColumnCount=2
Column:0=Значение.Name
Column:1=НаправлениеКуда

[ЛимитыПриПрохожденииДвижений.Column.Значение.Name]
Caption=Значение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ЛимитыПриПрохожденииДвижений.Column.НаправлениеКуда]
Caption=НаправлениеКуда
Width=50
Alignment=2
ColumnFormat=4

[ИзмененияВажности.Options]
Caption=Подтаблица ИзмененияВажности
CanInplace=1
ColumnCount=3
Column:0=Значение.Name
Column:1=КемУстановлен.Name
Column:2=Дата

[ИзмененияВажности.Column.Значение.Name]
Caption=Значение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИзмененияВажности.Column.КемУстановлен.Name]
Caption=КемУстановлен
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ИзмененияВажности.Column.Дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ИсторияИзмененияДатыВыверки.Options]
Caption=Подтаблица ИсторияИзмененияДатыВыверки
CanInplace=1
ColumnCount=3
Column:0=КтоИзменил
Column:1=ВремяИзменения
Column:2=НоваяДатаВыверки

[ИсторияИзмененияДатыВыверки.Column.КтоИзменил]
Caption=КтоИзменил
Width=120
ColumnFormat=1

[ИсторияИзмененияДатыВыверки.Column.ВремяИзменения]
Caption=ВремяИзменения
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ИсторияИзмененияДатыВыверки.Column.НоваяДатаВыверки]
Caption=НоваяДатаВыверки
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[Чат.Options]
Caption=Подтаблица Чат
CanInplace=1
ColumnCount=3
Column:0=Дата
Column:1=Сотрудник.Name
Column:2=Примечание

[Чат.Column.Дата]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[Чат.Column.Сотрудник.Name]
Caption=Сотрудник
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[Чат.Column.Примечание]
Caption=Примечание
Width=200
ColumnFormat=1

[ПрайсЛисты.Options]
Caption=Прайс листы
CanInplace=1
ColumnCount=5
Column:0=Значение.Name
Column:1=Условие.Name
Column:2=ДатаНачала
Column:3=ДатаОкончания
Column:4=Приостановлен

[ПрайсЛисты.Column.Значение.Name]
Caption=Значение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ПрайсЛисты.Column.Условие.Name]
Caption=Условие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[ПрайсЛисты.Column.ДатаНачала]
Caption=ДатаНачала
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ПрайсЛисты.Column.ДатаОкончания]
Caption=ДатаОкончания
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[ПрайсЛисты.Column.Приостановлен]
Caption=Приостановлен
Width=50
Alignment=2
ColumnFormat=4

[Приложения.Options]
Caption=Прикрепленные документы
CanInplace=1
ColumnCount=1
Column:0=ВнешнийДокумент.Name

[Приложения.Column.ВнешнийДокумент.Name]
Caption=ВнешнийДокумент
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

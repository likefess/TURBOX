[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ12
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-12
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=26
Column:0=ИзСистемы
Column:1=НомерБум
Column:2=Дата
Column:3=Рекв.Имя
Column:4=НОМЕР1
Column:5=БруттоСтр
Column:6=ВАЛЮТА
Column:7=ДАТА1
Column:8=ДАТА2
Column:9=ДатаДов
Column:10=ДОЛЖНОСТЬГПЛ
Column:11=ДОЛЖНОСТЬГПР
Column:12=КомуДов
Column:13=НеттоСтр
Column:14=НОМЕР2
Column:15=НомерДов
Column:16=Подразделение.Имя
Column:17=ОТПРАВИТЕЛЬ.Имя
Column:18=ПОСТАВЩИК.Имя
Column:19=ПЛАТЕЛЬЩИК.Имя
Column:20=ОСНОВАНИЕ
Column:21=ФИО11
Column:22=ФИО12
Column:23=ФИО13
Column:24=ФИОГПЛ
Column:25=ФИОГПР
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Позиции

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НомерБум]
Caption=Номер
Width=100

[.Column.Дата]
Caption=Дата
Width=100

[.Column.Рекв.Имя]
Caption=Наше предприятие
Width=100

[.Column.НОМЕР1]
Caption=НОМЕР1
Width=100
Visible=0
Alignment=1

[.Column.БруттоСтр]
Caption=Масса груза (брутто)
Width=100
Visible=0

[.Column.ВАЛЮТА]
Caption=Используемая валюта
Width=100
Visible=0

[.Column.ДАТА1]
Caption=ДАТА1
Width=100
Visible=0

[.Column.ДАТА2]
Caption=ДАТА2
Width=100
Visible=0

[.Column.ДатаДов]
Caption=дата формирования документа
Width=100
Visible=0

[.Column.ДОЛЖНОСТЬГПЛ]
Caption=ДОЛЖНОСТЬГПЛ
Width=100
Visible=0

[.Column.ДОЛЖНОСТЬГПР]
Caption=ДОЛЖНОСТЬГПР
Width=100
Visible=0

[.Column.КомуДов]
Caption=кому выдан
Width=100
Visible=0

[.Column.НеттоСтр]
Caption=Масса груза (нетто)
Width=100
Visible=0

[.Column.НОМЕР2]
Caption=НОМЕР2
Width=100
Visible=0
Alignment=1

[.Column.НомерДов]
Caption=номер доверенности
Width=100
Visible=0

[.Column.Подразделение.Имя]
Caption=Склад
Width=100
Alignment=2

[.Column.ОТПРАВИТЕЛЬ.Имя]
Caption=Грузополучатель
Width=100

[.Column.ПОСТАВЩИК.Имя]
Caption=Поставщик
Width=100

[.Column.ПЛАТЕЛЬЩИК.Имя]
Caption=Плательщик
Width=100

[.Column.ОСНОВАНИЕ]
Caption=Основание
Width=100

[.Column.ФИО11]
Caption=ФИО11
Width=100
Visible=0
Alignment=2

[.Column.ФИО12]
Caption=ФИО12
Width=100
Visible=0
Alignment=2

[.Column.ФИО13]
Caption=ФИО13
Width=100
Visible=0
Alignment=2

[.Column.ФИОГПЛ]
Caption=ФИОГПЛ
Width=100
Visible=0

[.Column.ФИОГПР]
Caption=ФИОГПР
Width=100
Visible=0

[Позиции.Options]
Caption=Позиции
ColumnCount=12
Column:0=ТМЦ.Имя
Column:1=БРУТТО
Column:2=ВОДНОМ
Column:3=ЕДИЗМ
Column:4=МЕСТ
Column:5=НЕТТО
Column:6=ЦЕНА
Column:7=СУММА
Column:8=СУММАНДС
Column:9=СтавкаНДС.Ставка
Column:10=СУМСНДС
Column:11=УПАК

[Позиции.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[Позиции.Column.БРУТТО]
Caption=БРУТТО
Width=100
Visible=0
Alignment=1

[Позиции.Column.ВОДНОМ]
Caption=ВОДНОМ
Width=100
Visible=0
Alignment=1

[Позиции.Column.ЕДИЗМ]
Caption=ЕДИЗМ
Width=100
Visible=0
Alignment=2

[Позиции.Column.МЕСТ]
Caption=МЕСТ
Width=100
Visible=0
Alignment=1

[Позиции.Column.НЕТТО]
Caption=НЕТТО
Width=100
Visible=0
Alignment=1

[Позиции.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[Позиции.Column.СУММА]
Caption=Сумма
Width=100
Alignment=1

[Позиции.Column.СУММАНДС]
Caption=СУММАНДС
Width=100
Visible=0
Alignment=1

[Позиции.Column.СтавкаНДС.Ставка]
Caption=Ставка НДС
Width=100
Alignment=1

[Позиции.Column.СУМСНДС]
Caption=Сумма с НДС
Width=100
Alignment=1

[Позиции.Column.УПАК]
Caption=УПАК
Width=100
Visible=0

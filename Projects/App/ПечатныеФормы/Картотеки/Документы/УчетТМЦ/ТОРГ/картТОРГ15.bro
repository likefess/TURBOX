[Options]
Version=7
Query=.УчетТМЦ.ТОРГ.ТОРГ15
CanHGroupModify=0
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Товары.ТОРГ-15
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=25
Column:0=ИзСистемы
Column:1=НОМЕРБУМ
Column:2=ДАТА
Column:3=РЕКВ.Имя
Column:4=Подразделение.Имя
Column:5=РЕКВПОСТ.Имя
Column:6=ДАТА2
Column:7=ДАТАДОК
Column:8=ФИО1.Имя
Column:9=СЛЕДСТВИЕ
Column:10=ВидОПЕР
Column:11=ПРИЧИНА
Column:12=КОДПРИЧИНЫ
Column:13=ФИО7.Имя
Column:14=ФИО6.Имя
Column:15=ДАТА3
Column:16=СЧЕТСТР
Column:17=СУММА_СТР1
Column:18=СУММА_СТР12
Column:19=СУММА_СТР2
Column:20=СУММА_СТР22
Column:21=СУММА_СТР3
Column:22=СУММА_СТР32
Column:23=НОМНАК
Column:24=КОМИССИЯ_Строкой
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=2
SubTable:0=Позиции
SubTable:1=ПОЗИЦИИ2

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НОМЕРБУМ]
Caption=Номер
Width=99
ColumnFormat=1

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.РЕКВ.Имя]
Caption=Организация
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Подразделение.Имя]
Caption=Склад
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.РЕКВПОСТ.Имя]
Caption=Поставщик
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТА2]
Caption=ДАТА2
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ДАТАДОК]
Caption=ДАТАДОК
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ФИО1.Имя]
Caption=ФИО1
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СЛЕДСТВИЕ]
Caption=СЛЕДСТВИЕ
Width=200
Visible=0
ColumnFormat=1

[.Column.ВидОПЕР]
Caption=ВидОПЕР
Width=200
Visible=0
ColumnFormat=1

[.Column.ПРИЧИНА]
Caption=ПРИЧИНА
Width=200
Visible=0
ColumnFormat=1

[.Column.КОДПРИЧИНЫ]
Caption=КОДПРИЧИНЫ
Width=200
Visible=0
ColumnFormat=1

[.Column.ФИО7.Имя]
Caption=ФИО7
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО6.Имя]
Caption=ФИО6
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДАТА3]
Caption=ДАТА3
Width=110
Visible=0
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.СЧЕТСТР]
Caption=СЧЕТСТР
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР1]
Caption=СУММА_СТР1
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР12]
Caption=СУММА_СТР12
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР2]
Caption=СУММА_СТР2
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР22]
Caption=СУММА_СТР22
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР3]
Caption=СУММА_СТР3
Width=200
Visible=0
ColumnFormat=1

[.Column.СУММА_СТР32]
Caption=СУММА_СТР32
Width=200
Visible=0
ColumnFormat=1

[.Column.НОМНАК]
Caption=НОМНАК
Width=200
Visible=0
ColumnFormat=1

[.Column.КОМИССИЯ_Строкой]
Caption=КОМИССИЯ
Width=200
Visible=0
ColumnFormat=1

[Позиции.Options]
Caption=Позиции
ColumnCount=13
Column:0=ТМЦ.Имя
Column:1=КОЛИЧ
Column:2=УЧЦЕНА
Column:3=СУММА
Column:4=АРТИКУЛ
Column:5=КОЛУЦ
Column:6=НАИМЕД
Column:7=НОВАЯУЦ
Column:8=ПРОЦСКИД
Column:9=СОРТ
Column:10=СТОИМОСТЬУЦ
Column:11=СУММАУЦ
Column:12=ХАРАКТЕРИСТИКА

[Позиции.Column.ТМЦ.Имя]
Caption=Наименование
Width=100
Alignment=2

[Позиции.Column.КОЛИЧ]
Caption=Кол-во
Width=100
Alignment=1

[Позиции.Column.УЧЦЕНА]
Caption=Уч.цена
Width=100
Alignment=1

[Позиции.Column.СУММА]
Caption=Сумма
Width=100
Alignment=1

[Позиции.Column.АРТИКУЛ]
Caption=АРТИКУЛ
Width=100
Visible=0

[Позиции.Column.КОЛУЦ]
Caption=КОЛУЦ
Width=100
Visible=0
Alignment=1

[Позиции.Column.НАИМЕД]
Caption=НАИМЕД
Width=100
Visible=0
Alignment=2

[Позиции.Column.НОВАЯУЦ]
Caption=НОВАЯУЦ
Width=100
Visible=0
Alignment=1

[Позиции.Column.ПРОЦСКИД]
Caption=ПРОЦСКИД
Width=100
Visible=0
Alignment=1

[Позиции.Column.СОРТ]
Caption=СОРТ
Width=100
Visible=0

[Позиции.Column.СТОИМОСТЬУЦ]
Caption=СТОИМОСТЬУЦ
Width=100
Visible=0
Alignment=1

[Позиции.Column.СУММАУЦ]
Caption=СУММАУЦ
Width=100
Visible=0
Alignment=1

[Позиции.Column.ХАРАКТЕРИСТИКА]
Caption=ХАРАКТЕРИСТИКА
Width=100
Visible=0

[ПОЗИЦИИ2.Options]
Caption=ПОЗИЦИИ2
ColumnCount=9
Column:0=ТОВАР
Column:1=ЦЕНА
Column:2=СУММА
Column:3=ДАТАОРД
Column:4=ЕДИЗМ
Column:5=КОД
Column:6=КОЛ
Column:7=НОМЕРОРД
Column:8=ОКЕИ

[ПОЗИЦИИ2.Column.ТОВАР]
Caption=Наименование
Width=100

[ПОЗИЦИИ2.Column.ЦЕНА]
Caption=Цена
Width=100
Alignment=1

[ПОЗИЦИИ2.Column.СУММА]
Caption=Сумма
Width=100
Alignment=1

[ПОЗИЦИИ2.Column.ДАТАОРД]
Caption=ДАТАОРД
Width=100
Visible=0

[ПОЗИЦИИ2.Column.ЕДИЗМ]
Caption=ЕДИЗМ
Width=100
Visible=0

[ПОЗИЦИИ2.Column.КОД]
Caption=КОД
Width=100
Visible=0

[ПОЗИЦИИ2.Column.КОЛ]
Caption=КОЛ
Width=100
Visible=0
Alignment=1

[ПОЗИЦИИ2.Column.НОМЕРОРД]
Caption=НОМЕРОРД
Width=100
Visible=0

[ПОЗИЦИИ2.Column.ОКЕИ]
Caption=ОКЕИ
Width=100
Visible=0

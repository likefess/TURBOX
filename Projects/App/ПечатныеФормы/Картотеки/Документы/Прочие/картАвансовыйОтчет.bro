[Options]
Version=7
Query=.Прочие.АвансОт
HierarchicalField=НомерБум
CanHGroupModify=0
OrderBy=НомерБум
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Прочие.Авансовый отчет
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=15
Column:0=ИзСистемы
Column:1=НомерБум
Column:2=ДатаПроведения
Column:3=Дата
Column:4=РЕКВ.Имя
Column:5=СУтвБух
Column:6=КПодраз.Имя
Column:7=ФИО.Имя
Column:8=Бух.Имя
Column:9=Перерасход
Column:10=Сост
Column:11=СП1
Column:12=СП1а
Column:13=СП2
Column:14=СП3
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.НомерБум]
Caption=Номер
Width=72
ColumnFormat=1

[.Column.ДатаПроведения]
Caption=Дата проводки
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.Дата]
Caption=Дата документа
Width=100
Alignment=2

[.Column.РЕКВ.Имя]
Caption=Наше предприятие
Width=135
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СУтвБух]
Caption=Сумма к утверждению
Width=100
Alignment=1

[.Column.КПодраз.Имя]
Caption=Подразделение
Width=127
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ФИО.Имя]
Caption=Подотчетное лицо
Width=119
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Бух.Имя]
Caption=Бухгалтер
Width=100
Visible=0

[.Column.Перерасход]
Caption=Перерасход предыдущего аванса
Width=100
Visible=0
Alignment=1

[.Column.Сост]
Caption=Остаток предыдущего аванса
Width=100
Visible=0
Alignment=1

[.Column.СП1]
Caption=Получено1
Width=100
Visible=0
Alignment=1

[.Column.СП1а]
Caption=Получено2
Width=100
Visible=0
Alignment=1

[.Column.СП2]
Caption=Получено3
Width=100
Visible=0
Alignment=1

[.Column.СП3]
Caption=Получено4
Width=100
Visible=0
Alignment=1

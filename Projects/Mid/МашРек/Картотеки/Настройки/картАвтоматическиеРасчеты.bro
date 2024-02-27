[Options]
Version=7
Query=.Настройки.АвтоматическийРасчет
OrderBy=Порядок
HelpContext=ПервичкаРСБУ.НСИ.Настройки.Сервис.Автоматические расчеты
OnOpenBlank=картотека_ПриОткрытииБланка
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=6
Column:0=Порядок
Column:1=Closed
Column:2=Имя
Column:3=КодЗадания
Column:4=НаименованиеРасчета
Column:5=КлассРеализации
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Порядок]
Caption=Порядок
Width=65
Alignment=1
ColumnFormat=2
Format=,##0;;0

[.Column.Closed]
Caption=Отключён
Width=91
Alignment=2
ColumnFormat=4

[.Column.Имя]
Caption=Наименование
Width=100
MinWidth=100

[.Column.КодЗадания]
Caption=Код задания
Hint="Код задания автоматического расчета,\x0D\x0Aиспользуемый в параметрах запуска программы через командную строку."
Width=100

[.Column.НаименованиеРасчета]
Caption=Вид авторасчета
HelpContext=ПервичкаРСБУ.НСИ.Настройки.Сервис.Автоматические расчеты
Width=0
MinWidth=100
ColumnType=1
OnOutput=НаименованиеРасчета_ПриВыводе

[.Column.КлассРеализации]
Caption=Класс реализации
Width=200
MinWidth=100
Visible=0
Sortable=0
ColumnFormat=1

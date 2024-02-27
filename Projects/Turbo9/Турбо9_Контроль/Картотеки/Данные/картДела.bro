[Options]
Version=7
Query=Upr.Данные.Процесс
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=ДатаНачала+
ShowCount=0
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=15
Column:0=Код
Column:1=КодФилиала
Column:2=Имя
Column:3=ДатаНачала
Column:4=ДатаВыверки
Column:5=ПланСрокЗавершения
Column:6=Комментарий
Column:7=ТипПроцесса.Имя
Column:8=Ответственный.Имя
Column:9=Инициатор.Имя
Column:10=Менеджер.Имя
Column:11=Исполнитель.Имя
Column:12=Проверяющий.Имя
Column:13=Важность.Имя
Column:14=СостояниеПроцесса.Имя
TreeVisible=1
TreeWidth=190
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.Код]
Caption=Код
Width=90
MinWidth=100

[.Column.КодФилиала]
Caption=КодФилиала
Width=100
Visible=0

[.Column.Имя]
Caption=Наименование
Width=236
MinWidth=100

[.Column.ДатаНачала]
Caption=Дата Начала
Width=100
Alignment=2

[.Column.ДатаВыверки]
Caption=Дата Выверки
Width=100
Alignment=2

[.Column.ПланСрокЗавершения]
Caption=К сроку
Width=100
Alignment=2

[.Column.Комментарий]
Caption=Описание
Width=100
MinWidth=100

[.Column.ТипПроцесса.Имя]
Caption=Тип
Width=100
MinWidth=100

[.Column.Ответственный.Имя]
Caption=Ответственный
Width=100
MinWidth=100
Lookup=1

[.Column.Инициатор.Имя]
Caption=Инициатор
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Менеджер.Имя]
Caption=Менеджер
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Исполнитель.Имя]
Caption=Исполнитель
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Проверяющий.Имя]
Caption=Проверяющий
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Важность.Имя]
Caption=Важность
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СостояниеПроцесса.Имя]
Caption=Состояние
Width=100
Lookup=1
ColumnFormat=6
ManualEdit=1

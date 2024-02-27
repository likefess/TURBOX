[Options]
Version=7
Query=.Данные.Процесс
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=ДатаНачала+
ShowCount=0
CanCopy=1
OnClick=картотека_ПриНажатии
OnDrawRow=Картотека_ПриРисованииСтроки
ColumnCount=16
Column:0=Code
Column:1=Branch
Column:2=Name
Column:3=ДатаНачала
Column:4=ДатаВыверки
Column:5=ПланСрокЗавершения
Column:6=Комментарий
Column:7=ТипПроцесса.Name
Column:8=ВалютаПроцесса.Code
Column:9=Ответственный.Name
Column:10=Инициатор.Name
Column:11=Менеджер.Name
Column:12=Исполнитель.Name
Column:13=Проверяющий.Name
Column:14=Важность.Name
Column:15=СостояниеПроцесса.Name
TreeVisible=1
TreeWidth=190
SubTableWidth=0
SubTableHeight=1
SubTableAlign=0
CanResizeTemplate=1

[.Column.Code]
Caption=Код
Width=90
OnDraw=Поле_ПриРисовании

[.Column.Branch]
Caption=КодФилиала
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=236
OnDraw=Поле_ПриРисовании

[.Column.ДатаНачала]
Caption=Дата начала
Width=100
OnDraw=Поле_ПриРисовании

[.Column.ДатаВыверки]
Caption=Дата выверки
Width=100
OnDraw=Поле_ПриРисовании

[.Column.ПланСрокЗавершения]
Caption=К сроку
Width=100
Alignment=2
OnDraw=Поле_ПриРисовании

[.Column.Комментарий]
Caption=Описание
Width=100
Sortable=0
OnDraw=Поле_ПриРисовании

[.Column.ТипПроцесса.Name]
Caption=Тип
Width=100
OnDraw=Поле_ПриРисовании

[.Column.ВалютаПроцесса.Code]
Caption=Валюта
Width=50
Visible=0

[.Column.Ответственный.Name]
Caption=Ответственный
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Инициатор.Name]
Caption=Инициатор
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Менеджер.Name]
Caption=Менеджер
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Исполнитель.Name]
Caption=Исполнитель
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Проверяющий.Name]
Caption=Проверяющий
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.Важность.Name]
Caption=Важность
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

[.Column.СостояниеПроцесса.Name]
Caption=Состояние
Width=100
Visible=0
OnDraw=Поле_ПриРисовании

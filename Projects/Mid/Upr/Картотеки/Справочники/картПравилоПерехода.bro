[Options]
Version=7
Query=Control.Ref.TransitionRule
MBlank=.Справочники.редПравилаПерехода
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=Картотека_ПриСозданииЗаписи
OrderBy=Имя
ShowCount=0
ColumnCount=6
Column:0=Имя
Column:1=Комментарий
Column:2=СостояниеОткуда.Name
Column:3=СостояниеКуда.Name
Column:4=СостояниеКуда.ТипДоступа
Column:5=ТипСоздаваемогоОД.Name
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Имя]
Caption=Наименование
Width=200
ColumnFormat=1

[.Column.Комментарий]
Caption=Комментарий
Width=0

[.Column.СостояниеОткуда.Name]
Caption=Старое состояние
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СостояниеКуда.Name]
Caption=Новое состояние
Width=0
MinWidth=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СостояниеКуда.ТипДоступа]
Caption=Новый ответственный
Width=125
Editable=0
Alignment=1
ColumnFormat=5
EnumList=" |-1\x0D\x0AПредприятие|1\x0D\x0AПодразделение|2\x0D\x0AИнициатор|4\x0D\x0AМенеджер|3\x0D\x0AИсполнитель|5\x0D\x0AПроверяющий|6\x0D\x0AКонтрагент|0\x0D\x0AПредставитель контрагента|7\x0D\x0AПосредник|8\x0D\x0AПредставитель посредника|9"

[.Column.ТипСоздаваемогоОД.Name]
Caption=Тип документа
Width=200
Visible=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[Options]
Version=7
Query=Control.Ref.TaskStatus
HierarchicalField=Name
CanEdit=0
Hierarchical=1
OnMove=картотека_ПриПеремещении
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Code
CanInplace=1
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=4
Column:0=Code
Column:1=Name
Column:2=Description
Column:3=ТипДоступа
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=100
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование
Width=155
OnDraw=Поле_ПриРисовании

[.Column.Description]
Caption=Описание
Width=310
OnDraw=Поле_ПриРисовании

[.Column.ТипДоступа]
Caption=Ответственный
Width=100
Lookup=1
Alignment=1
ColumnFormat=5
EnumList=" |-1\x0D\x0AПредприятие|1\x0D\x0AПодразделение|2\x0D\x0AИнициатор|4\x0D\x0AМенеджер|3\x0D\x0AИсполнитель|5\x0D\x0AПроверяющий|6\x0D\x0AКонтрагент|0\x0D\x0AПредставитель контрагента|7\x0D\x0AПосредник|8\x0D\x0AПредставитель посредника|9"

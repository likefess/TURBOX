[Options]
Version=7
Query=Bas.Ref.EntityRole
HierarchicalField=Name
Hierarchical=1
CanCopy=1
HelpContext=.СтруктураБизнеса.ДиалогиНастроек.РолеваяГруппаСубъектов.Default
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=4
Column:0=Code
Column:1=Name
Column:2=SystemRole
Column:3=PosOrProf
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=152
OnDraw=Поле_ПриРисовании

[.Column.Name]
Caption=Наименование роли субъекта
Width=250
OnDraw=Поле_ПриРисовании

[.Column.SystemRole]
Caption=Назначение роли
Width=150
ColumnFormat=5
OnDraw=Поле_ПриРисовании

[.Column.PosOrProf]
Caption=Тип роли
Width=130
Lookup=1
Alignment=1
ColumnFormat=5
EnumList="роль|0\x0D\x0Aдолжность|1\x0D\x0Aпрофессия|2"

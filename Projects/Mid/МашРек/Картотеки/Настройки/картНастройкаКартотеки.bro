[Options]
Version=7
Query=Bas.Config.НастройкаКартотеки
MBlank=.Настройки.редНастройкаКартотеки
CanHGroupModify=0
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
CanCopy=1
OnClick=картотека_ПриНажатии
ColumnCount=3
Column:0=Имя
Column:1=Картотека
Column:2=Заголовок
TreeWidth=120

[.Column.Имя]
Caption=Наименование
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Картотека]
Caption=Картотека
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

[.Column.Заголовок]
Caption=Заголовок картотеки
Width=200
ColumnFormat=1
OnDraw=Поле_ПриРисовании

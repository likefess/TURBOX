[Options]
Version=7
Query=BizRus.Классификаторы.ОКОФ
MBlank=.Классификаторы.редОКОФ
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnModify=картотека_ПриИзменении
ShowCount=0
HelpContext=.Бухгалтерия.Справочники.Операции выполняемые при работе со справочниками
ColumnCount=6
Column:0=Код
Column:1=КодОКОФ
Column:2=КлГрупп
Column:3=Имя
Column:4=КлИдент
Column:5=НеИспользуется
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Код]
Caption=Код
Width=134
ColumnFormat=1

[.Column.КодОКОФ]
Caption=Полный код ОКОФ
Width=130

[.Column.КлГрупп]
Caption=Номер амортизационной группы
Width=100

[.Column.Имя]
Caption=Наименование
Width=0
ColumnFormat=1

[.Column.КлИдент]
Caption=Идентификатор
Width=100
Alignment=2

[.Column.НеИспользуется]
Caption=Не используется
Width=100
Alignment=2
ColumnFormat=4

[Options]
Version=7
Query=BizRus.Классификаторы.Улица
HierarchicalField=Имя
CanEdit=0
ActionOnType=2
CanHGroupModify=0
OrderBy=Код
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=10
Column:0=DocID
Column:1=ExtID
Column:2=Код
Column:3=Имя
Column:4=Сокращение.Код
Column:5=Индекс
Column:6=Пункт.Имя
Column:7=ИФНС
Column:8=Участок
Column:9=ОКАТО
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.DocID]
Caption=DocID
Width=100
Visible=0
Editable=0
Alignment=1

[.Column.ExtID]
Caption=ExtID
Width=120
Visible=0

[.Column.Код]
Caption=Код
Width=120
ColumnFormat=1

[.Column.Имя]
Caption=Наименование
Width=200
ColumnFormat=1
OnDraw=Имя_ПриРисовании

[.Column.Сокращение.Код]
Caption=Сокращение
Width=90
ColumnFormat=1

[.Column.Индекс]
Caption=Индекс
Width=80
ColumnFormat=1

[.Column.Пункт.Имя]
Caption=Район/Город/Населенный пункт
Width=200

[.Column.ИФНС]
Caption=ИФНС
Width=65
Visible=0
ColumnFormat=1

[.Column.Участок]
Caption=Участок
Width=65
Visible=0
ColumnFormat=1

[.Column.ОКАТО]
Caption=ОКАТО
Width=120
Visible=0
ColumnFormat=1

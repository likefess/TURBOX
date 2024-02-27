[Options]
Version=7
Query=BizRus.Классификаторы.РегионИГород
HierarchicalField=Имя
CanEdit=0
ActionOnType=2
CanHGroupModify=0
OrderBy=Код
CanInsert=0
CanDelete=0
CanMove=0
ColumnCount=14
Column:0=DocID
Column:1=ExtID
Column:2=Код
Column:3=Имя
Column:4=Сокращение.Код
Column:5=Индекс
Column:6=Уровень
Column:7=Город.Имя
Column:8=Район.Имя
Column:9=Регион.Имя
Column:10=ИФНС
Column:11=Участок
Column:12=ОКАТО
Column:13=Статус
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

[.Column.Сокращение.Код]
Caption=Сокращение
Width=90
ColumnFormat=1

[.Column.Индекс]
Caption=Индекс
Width=80
ColumnFormat=1

[.Column.Уровень]
Caption=Уровень
Width=65
Alignment=1
ColumnFormat=5
EnumList="|0\x0D\x0AРегион|1\x0D\x0AРайон|2\x0D\x0AГород|3\x0D\x0AНас.пункт|4"

[.Column.Город.Имя]
Caption=Город
Width=200

[.Column.Район.Имя]
Caption=Район
Width=200

[.Column.Регион.Имя]
Caption=Регион
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

[.Column.Статус]
Caption=Статус
Width=65
Visible=0
Alignment=1
ColumnFormat=2

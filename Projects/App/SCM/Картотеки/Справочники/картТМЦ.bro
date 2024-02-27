[Options]
Version=7
Query=Biz.Data.Resource
Filter=ТипРесурса in [100,110,111,120,125,130,131,132,133,140,150,160,161,170,180,190,200,471]
HierarchicalField=Имя
Hierarchical=1
OnOpenBlank=картотека_ПриОткрытииБланка
OnCreateRecord=картотека_ПриСозданииЗаписи
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
OrderBy=Код+
ShowCount=0
CanCopy=1
HelpContext=.Бухгалтерия.Справочники.Карточка ТМЦ
ColumnCount=9
Column:0=Завершен
Column:1=CreateDate
Column:2=CreateUser
Column:3=UpdateDate
Column:4=UpdateUser
Column:5=Код
Column:6=Имя
Column:7=ОснЕдИзм.Имя
Column:8=ТипРесурса
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100
CanResizeTemplate=1

[.Column.Завершен]
Caption=Завершен
Hint=Флаг завершенности работы с объектом
Width=60
Visible=0
Alignment=2
ColumnFormat=4
OnDraw=Столбец_ПриРисовании

[.Column.CreateDate]
Caption=Дата создания
Width=120
Visible=0
Alignment=2

[.Column.CreateUser]
Caption=Создал
Width=120
Visible=0

[.Column.UpdateDate]
Caption=Дата изменения
Width=120
Visible=0
Alignment=2

[.Column.UpdateUser]
Caption=Изменил
Width=120
Visible=0

[.Column.Код]
Caption=Код
Width=120
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.Имя]
Caption=Имя
Width=0
ColumnFormat=1
OnDraw=Столбец_ПриРисовании

[.Column.ОснЕдИзм.Имя]
Caption=Единица измерения ТМЦ
Width=150
Alignment=2

[.Column.ТипРесурса]
Caption=Вид ТМЦ
Width=150
Alignment=1
ColumnFormat=5
EnumList="Ресурс|0\x0D\x0AТМЦ|100\x0D\x0A      Имущество|110\x0D\x0A      Товар|120\x0D\x0A      Денежные документы|125\x0D\x0A      Материал|130\x0D\x0A      Полуфабрикат|140\x0D\x0A      Изделие|150\x0D\x0A      Хоз. товар|160\x0D\x0A      Рекламный материал|170\x0D\x0A      Тара|180\x0D\x0A      Оборудование (ТМЦ)|190\x0D\x0AУслуга|200\x0D\x0AФинансовый инструмент|300\x0D\x0A      Денежное средство|310\x0D\x0A      Вексель|320\x0D\x0A      Акция|330\x0D\x0A      Облигация|340\x0D\x0AСтатья деятельности|400\x0D\x0A      Продажи|410\x0D\x0A      Закупки|420\x0D\x0A      Производство|430\x0D\x0A      Налог, сбор|440\x0D\x0A      Расчеты с персоналом|450\x0D\x0A      Расчеты по фин. операциям|460\x0D\x0A      Капиталовложения|470\x0D\x0AТрудозатраты|500\x0D\x0AРесурс оборудования|600\x0D\x0AНедвижимое имущество|700\x0D\x0AНематериальный ресурс|800"

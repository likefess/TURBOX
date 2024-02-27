[Options]
Version=7
Query=.УчетТМЦ.Разное.АктПриемки
CanHGroupModify=0
OrderBy=ДАТА
ShowCount=0
CanCopy=1
HelpContext=.ПечатныеФормы.Печатные формы.Учет ТМЦ.Акт приемки работ услуг
OnCreateRecord=картотека_ПриСозданииЗаписи
OnOpenBlank=картотека_ПриОткрытииБланка
OnEdit=картотека_ПриРедактировании
OnPost=картотека_ПриЗаписи
OnCancel=картотека_ПриОтмене
OnModify=картотека_ПриИзменении
ColumnCount=5
Column:0=ИзСистемы
Column:1=ДАТА
Column:2=НОМЕРБУМ
Column:3=Исполнитель.Имя
Column:4=Заказчик.Имя
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=100
SubTableCount=1
SubTable:0=Позиции

[.Column.ИзСистемы]
Caption=Из системы
Width=70
Editable=0
Alignment=2
ColumnFormat=5
EnumList=" |0\x0D\x0AТорговля|1\x0D\x0AТМЦ|2\x0D\x0AОбщий|3"

[.Column.ДАТА]
Caption=Дата
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.НОМЕРБУМ]
Caption=Номер
Width=111
ColumnFormat=1

[.Column.Исполнитель.Имя]
Caption=Исполнитель
Width=200
ColumnFormat=1

[.Column.Заказчик.Имя]
Caption=Заказчик
Width=200
ColumnFormat=1

[Позиции.Options]
Caption=Позиции
ColumnCount=8
Column:0=Ресурс.Имя
Column:1=ЕдИзм.Код
Column:2=Количество
Column:3=Цена
Column:4=СуммаБезНДС
Column:5=СтавкаНДС.Имя
Column:6=СуммаНДС
Column:7=СуммаСНДС

[Позиции.Column.Ресурс.Имя]
Caption=Наименование
Width=100

[Позиции.Column.ЕдИзм.Код]
Caption=Ед. измерения
Width=100

[Позиции.Column.Количество]
Caption=Количество
Width=100
Alignment=1

[Позиции.Column.Цена]
Caption=Цена
Width=100
Alignment=1

[Позиции.Column.СуммаБезНДС]
Caption=СуммаБезНДС
Width=100
Summary=1
Alignment=1

[Позиции.Column.СтавкаНДС.Имя]
Caption=Ставка НДС
Width=100

[Позиции.Column.СуммаНДС]
Caption=СуммаНДС
Width=100
Summary=1
Alignment=1

[Позиции.Column.СуммаСНДС]
Caption=СуммаСНДС
Width=100
Summary=1
Alignment=1

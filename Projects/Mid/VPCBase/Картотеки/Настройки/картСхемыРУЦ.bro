[Options]
Version=7
Query=Upr.Настройки.СхемаРУЦ
CanEdit=0
CanHGroupModify=0
CanInsert=0
CanMove=0
ColumnCount=7
Column:0=Наименование
Column:1=ВариантРасчета.Name
Column:2=СтатусРасчета.Code
Column:3=УсловиеНаСчета
Column:4=УсловиеНаПараметры
Column:5=ПланСчетов
Column:6=ЗапускатьПереоценку
TreeWidth=120
SubTableWidth=100
SubTableHeight=7

[.Column.Наименование]
Caption=Наименование
Width=100

[.Column.ВариантРасчета.Name]
Caption=Вариант стоимостного учета
Width=200
Sortable=0
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.СтатусРасчета.Code]
Caption=Расчет по статусу
Width=200
Sortable=0
Lookup=1
ColumnFormat=6
FieldCard=Upr.Справочники.картСтатус
LookupField=код
ManualEdit=1

[.Column.УсловиеНаСчета]
Caption=Условие на счета
Width=200
ColumnFormat=1

[.Column.УсловиеНаПараметры]
Caption=Условие на параметры
Width=200
ColumnFormat=1

[.Column.ПланСчетов]
Caption=План счетов
Width=200
ColumnFormat=1

[.Column.ЗапускатьПереоценку]
Caption=Запускать переоценку
Width=175
Alignment=2
ColumnFormat=4

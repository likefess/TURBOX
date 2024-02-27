[Options]
Version=7
Query=.Классификаторы.ВидыОтпусков
CanInplace=1
ColumnCount=4
Column:0=Code
Column:1=Name
Column:2=КодУчета.ЦифровойКод
Column:3=КодУчета.Code
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код по ОКИН
Width=119
ColumnFormat=1

[.Column.Name]
Caption=Название
Width=128
ColumnFormat=1

[.Column.КодУчета.ЦифровойКод]
Caption=Код
Hint=@ВидыОтпусков:КодУчета=Код учета
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.КодУчета.Code]
Caption=Код учета
Width=100

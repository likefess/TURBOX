[Options]
Version=7
Query=.Справочники.СО
CanHGroupModify=0
CanInplace=1
HelpContext=.УиФ.Спецодежда.Основные данные.Спецодежда и Спецоснастка
ColumnCount=10
Column:0=Code
Column:1=Name
Column:2=Company.Name
Column:3=Status
Column:4=IssueDate
Column:5=ClothType
Column:6=Employee.Name
Column:7=Size.Name
Column:8=Height.Name
Column:9=Division.Name
TreeVisible=1
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=200
ColumnFormat=1

[.Column.Name]
Caption=Наименование
Width=200
ColumnFormat=1

[.Column.Company.Name]
Caption=Предприятие
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Status]
Caption=Статус
Hint=Статус
Width=65
Alignment=1
ColumnFormat=5
EnumList="Эксплуатация\x0D\x0AЗакрыто\x0D\x0AСписано"

[.Column.IssueDate]
Caption=Дата выдачи
Hint=Дата выдачи
Width=110
Alignment=2
ColumnFormat=3
DateInpFmt=2

[.Column.ClothType]
Caption=Вид СО
Hint=Вид одежды
Width=65
Alignment=1
ColumnFormat=5
EnumList="\x0D\x0AСпецодежда\x0D\x0AФорменное обмундирование\x0D\x0AСпецоснастка"

[.Column.Employee.Name]
Caption=Сотрудник
Hint=Код сотрудника
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Size.Name]
Caption=Размер
Hint=Размер
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Height.Name]
Caption=Рост
Hint=Рост
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Division.Name]
Caption=Подразделение
Hint=Подразделение
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

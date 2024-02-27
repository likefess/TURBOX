[Options]
Version=7
Query=.Данные.Назначения
CanInplace=1
ColumnCount=8
Column:0=УсловияТрудаСотрудника.Person.Name
Column:1=УсловияТрудаСотрудника.EmplNumber
Column:2=УсловияТрудаСотрудника.Company.Name
Column:3=Подразделение.Name
Column:4=Должность.Name
Column:5=Разряд.Name
Column:6=ДатаПриема
Column:7=ДатаПеревода
TreeWidth=120
SubTableVisible=1
SubTableWidth=100
SubTableHeight=31

[.Column.УсловияТрудаСотрудника.Person.Name]
Caption=ФИО
Width=196

[.Column.УсловияТрудаСотрудника.EmplNumber]
Caption=Таб.номер
Hint=@Назначения:УсловияТрудаСотрудника=Условия труда сотрудника
Width=70
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.УсловияТрудаСотрудника.Company.Name]
Caption=Предприятие
Width=100

[.Column.Подразделение.Name]
Caption=Подразделение
Hint=@Назначения:Подразделение=Подразделение
Width=137
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Должность.Name]
Caption=Должность
Hint=@Назначения:Должность=Должность
Width=200
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Разряд.Name]
Caption=Разряд
Hint=@Назначения:Разряд=Разряд
Width=115
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.ДатаПриема]
Caption=Дата приема на вакансию
Width=100

[.Column.ДатаПеревода]
Caption=Дата перевода на другую вакансию
Width=100

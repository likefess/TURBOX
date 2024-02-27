[Options]
Version=7
Query=Biz.Ref.Certificate
MBlank=.Справочники.редСертификат
ColumnCount=10
Column:0=Code
Column:1=Name
Column:2=IssuedBy
Column:3=Category.Name
Column:4=Comment
Column:5=IssueDate
Column:6=ExpiryDate
Column:7=НомерБланка
Column:8=АпробационныйТип
Column:9=ГигиеническийНомер
TreeWidth=120
SubTableWidth=100
SubTableHeight=100

[.Column.Code]
Caption=Код
Width=112
ColumnFormat=1

[.Column.Name]
Caption=Имя
Width=127
ColumnFormat=1

[.Column.IssuedBy]
Caption=Кем выдан
Width=152
ColumnFormat=1

[.Column.Category.Name]
Caption=Тип сертификата
Width=156
Lookup=1
ColumnFormat=6
ManualEdit=1

[.Column.Comment]
Caption=Комментарий
Width=107
ColumnFormat=1

[.Column.IssueDate]
Caption=Дата выдачи
Width=100

[.Column.ExpiryDate]
Caption=Срок выдачи
Width=100

[.Column.НомерБланка]
Caption=Номер бланка
Width=160
ColumnFormat=1

[.Column.АпробационныйТип]
Caption=Апробационный тип
Width=160
ColumnFormat=1

[.Column.ГигиеническийНомер]
Caption=Гигиенический номер
Width=200
ColumnFormat=1

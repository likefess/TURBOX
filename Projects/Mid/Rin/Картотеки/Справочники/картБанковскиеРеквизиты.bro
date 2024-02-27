[Options]
Version=7
Query=Biz.Data.BankDetails
OrderBy=OwnerEntity.Name+;Bank.Name+;AccountNum+
OnMove=картотека_ПриПеремещении
OnClick=картотека_ПриНажатии
OnOpenBlank=картотека_ПриОткрытииБланка
OnBeforeModify=картотека_ПередИзменением
OnModify=картотека_ПриИзменении
ColumnCount=4
Column:0=OwnerEntity.Name
Column:1=Bank.Name
Column:2=AccountNum
Column:3=Bank.БИК
TreeWidth=120
SubTableWidth=0
SubTableHeight=1
SubTableAlign=0

[.Column.OwnerEntity.Name]
Caption=Наименование организации
Width=200
ColumnFormat=6
FieldCard=Rin.Данные.картСубъект

[.Column.Bank.Name]
Caption=Банк
Width=200
ColumnFormat=6
FieldCard=.Справочники.картБанк

[.Column.AccountNum]
Caption=Расчетный счет
Width=150
ColumnFormat=1

[.Column.Bank.БИК]
Caption=БИК
Width=100
ColumnFormat=6
FieldCard=.Справочники.картБанк

---
Link: CMP.Rec.Properties.INumerator
---

<!--- Навигация
[Имя проекта](#)
-->

# Класс INumerator
---

Класс обертка записи реквизита Нумератор.
Является производным от родительского класса CMP.Rec.Properties.IProperty и наследует его свойства и методы.

<!---
## Примеры
-->

## Свойства

<!--
### Типы
* [Тип 1](#)
-->

### Константы
#### Способы нумерации
* [Константа nmSequentialNumbering](nmSequentialNumbering)
* [Константа nmProceduralNumbering](nmProceduralNumbering)

#### Когда начинать нумерацию заново в случае последовательной нумерации
* [Константа snBeginningYear](snBeginningYear)
* [Константа snBeginningMonth](snBeginningMonth)
* [Константа snBeginningDay](snBeginningDay)
* [Константа snExactDate](snExactDate)

#### Способы получения значения
* [Константа npText](npText)
* [Константа npNumber](npPrefixServer)
* [Константа npPrefixServer](npPrefixServer)
* [Константа npPostfixServer](npPostfixServer)
* [Константа npPrefixProcType](npPrefixProcType)
* [Константа npPostfixProcType](npPostfixProcType)
* [Константа npDay](npDay)
* [Константа npMonth](npMonth)
* [Константа npYear](npYear)
* [Константа npDatNumber](npDatNumber)

### Поля
* [Поле NumberingMethod](NumberingMethod)
* [Поле ProcedureNumbering](ProcedureNumbering)
* [Поле NumberingDate](NumberingDate)
* [Поле StartOfNumbering](StartOfNumbering)
* [Поле NumeratorType](NumeratorType)
* [Поле EachObjectHasOwn](EachObjectHasOwn)
* [Поле CurNumeratorDate](CurNumeratorDate)
* [Поле CurNumeratorType](CurNumeratorType)
* [Поле CurProcType](CurProcType)
* [Поле CurNumerator](CurNumerator)
* [Поле UseSingleNumerator](UseSingleNumerator)

### Подтаблицы
* [Поле AdditionSptin](AdditionSptin)
* [Поле NumberParts](NumberParts)

### Методы
* [Функция GetNewNumber](GetNewNumber)
* [Функция GetNumerator](GetNumerator)
* [Функция TheSamePeriod](TheSamePeriod)
* [Функция GetPartOfNumber](GetPartOfNumber)

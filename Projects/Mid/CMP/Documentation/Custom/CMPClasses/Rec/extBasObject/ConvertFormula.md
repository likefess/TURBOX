---
Link: CMP.Rec.extBasObject.@ConvertFormula
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Rec.extBasObject](Default)

# Функция ConvertFormula
---

## Описание

    func ConvertFormula (aFormula :String; aParams :Def.ISubtable; {aMType :Def.TMovingType = nil}; {aDescription :Logical = false}) :String

## Параметры

**aFormula**  - формула строкой;

**aParams** - записи формулы;

**aMType** - тип движения, не обязательный параметр;

**aDescription** - указывает, что формула для формирования описания объекта.

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Функция возвращает преобразованную для вычислителя формулу, переданную в параметре aFormula, в которой макросы заменены на ссылки записей, перданных в параметре aParams, для типа движения  aMType.

<!--
## Пример

    ConvertFormula...
-->


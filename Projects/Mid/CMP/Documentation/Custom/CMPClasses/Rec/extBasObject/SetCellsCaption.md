﻿---
Link: CMP.Rec.extBasObject.@SetCellsCaption
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Rec.extBasObject](Default)

# Процедура SetCellsCaption
---

## Описание

    proc SetCellsCaption (aCode :String; aCaption :String)

## Параметры

**aCode**  - код реквизита;

**aCaption** - значение свойства надписи, которое устанавливается.


<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура устанавливает свойство надписи элемента управления. Вызывается при вычислении формулы вычислителем.  
При установке проверяется, было ли инициализировано свойство до этого. Установка происходит только если настройка не была инициализированна, либо значение видимости отличается от значения элемента.

<!--
## Пример

    SetCellsCaption...
-->

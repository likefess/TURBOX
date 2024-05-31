﻿---
Link: CMP.Rec.extBasObject.@SetCellsEnabled
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Rec.extBasObject](Default)

# Процедура SetCellsEnabled
---

## Описание

    proc SetCellsEnabled (aCode :String; aEnabled :Logical)

## Параметры

**aCode**  - код реквизита;

**aEnabled** - значение свойства доступности, которое устанавливается.


<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура устанавливает свойство доступности элемента управления. Вызывается при вычислении формулы вычислителем.  
При установке проверяется, была ли инициализирована доступность до этого. Установка происходит только если настройка не была инициализированна, либо значение доступноти отличается от значения элемента.

<!--
## Пример

    SetCellsEnabled...
-->

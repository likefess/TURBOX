﻿---
Link: CMP.Rec.extBasObject.@SetTablesEnabled
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Rec.extBasObject](Default)

# Процедура SetTablesEnabled
---

## Описание

    proc SetTablesEnabled (aCode :String; aEnabled :Logical)

## Параметры

**aCode**  - код реквизита;

**aEnabled** - значение свойства доступности, которое устанавливается.

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура устанавливает свойство доступности таблицы. Вызывается при вычислении формулы вычислителем.  
При установке проверяется, была ли инициализирована доступность до этого. Установка происходит только если настройка не была инициализированна, либо значение видимости отличается от значения элемента.

<!--
## Пример

    SetTablesEnabled...
-->

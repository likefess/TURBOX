﻿---
Link: CMP.Rec.extBasObject.@SetCellsVisible
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Rec.extBasObject](Default)

# Процедура SetCellsVisible
---

## Описание

    proc SetCellsVisible (aCode :String; aVisible :Logical)

## Параметры

**aCode**  - код реквизита;

**aVisible** - значение свойства видимости, которое устанавливается.


<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура устанавливает свойство видимости элемента управления. При установке проверяется, была ли инициализирована видимость до этого.  
Установка свойства происходит только если настройка не была инициализированна, либо значение видимости отличается от значения элемента.

<!--
## Пример

    SetCellsVisible...
-->

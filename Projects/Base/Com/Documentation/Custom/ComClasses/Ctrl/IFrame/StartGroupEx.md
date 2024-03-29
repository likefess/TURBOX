﻿---
Link: .Ctrl.IFrame.@StartGroupEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура StartGroupEx

## Описание

    proc StartGroupEx({aLayout :Integer}; aWidth :Integer; {aMinWidth :Integer}; {aMaxWidth :Integer}; {aCols :Numeric[]});

## Параметры

**aLayout** - тип расположения контролов. Принимает следующие значения:

* 1 - поведение зависит от используемой функции AddXXX (значение по умолчанию);
* 2 - контролы располагаются в строку, перевод строк вставляется вручную;
* 3 - контролы заполняют клетки группы, по достижении последней клетки делается
      автоматический перевод на новую строку. Удобно для регулярных групп.

**aWidth** - "желаемая" ширина группы.

**aMinWidth** - минимальная ширина адаптивной группы.

**aMaxWidth** - максимальная ширина адаптивной группы.

* Если aMinWidth = aMaxWidth = 0 (умолчание) группа считается не адаптивной.
* Если хотя бы одно из этих значений <> 0 группа начинает "подстраиваться"
  под размер формы в заданных пределах.
* Если aMaxWidth = -1, то максимальная ширина не ограничивается (=MaxInt).

**aCols** - Массив ширин (вещественные числа) интерпретируемый след. образом:

* Если число по модулю >= 1, то оно считается заданным в миллиметрах.
* Если число по модулю < 1, то оно считается долей от желаемой ширины aWidth.
* Если группа адаптивная, то:
    * Если число < 0 то ширина считается фиксированной, и не меняется при "подстройке";
    * Если число > 0 то реальная ширина пересчитывается таким образом, чтобы строка
      заняла всю ширину формы (а пределах MinWidth - MaxWidth) с сохранением
      пропорций между всеми не фиксированными колонками.


## Назначение

Инициализирует логическую группу контролов, имеющих примерно одинаковую раскладку,
чтобы избежать задания ширин и других атрибутов при создании каждого контрола.
Группа имеет "желаемую" ширину (не обязательно совпадающую с реальной) и набор
столбцов, заданных абсолютными или относительными ширинами в массиве aCols.

Настройки сбрасываются процедурой [StopGroup](StopGroup).

## Замечания

1. Если aLayout = 1 то:
    * функции AddFieldEdit и AddCompLab ведут себя как при aLayout = 3
    * остальные функции - как при aLayout = 2.

   Не очень логично, но следствие "эволюционного развития".

2. Если параметр aWidth = 0, то значения aWidth/aMinWidth/aMaxWidth берутся
   из родительского фрейма. Аналогично, если опущен параметр aCols.

3. Если у текущего фрейма есть дочерние, то вызов функции StartGroupEx
   приводит к установке той же раскладки у всех дочерних фреймов.
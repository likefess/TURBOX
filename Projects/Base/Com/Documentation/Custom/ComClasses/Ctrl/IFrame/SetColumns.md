---
Link: .Ctrl.IFrame.@SetColumns
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура SetColumns

## Описание

    proc SetColumns({aCols :Numeric[]});

## Параметры

**aCols** - массив ширин (вещественные числа), интерпретируемый следующим образом:

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
Группа имеет набор столбцов, заданных абсолютными или относительными ширинами в массиве aCols.

Контролы заполняют клетки группы, по достижении последней клетки делается автоматический
перевод на новую строку.

Настройки сбрасываются процедурой [StopGroup](StopGroup).
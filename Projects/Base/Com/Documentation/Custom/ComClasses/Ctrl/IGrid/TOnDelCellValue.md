---
Link: Com.Ctrl.IGrid.@TOnDelCellValue
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TOnDelCellValue

## Описание

    type TOnDelCellValue :func (aCell :Ctrl.Grid.ICell; aValue :Variant) :Logical;

## Параметры

**aCell** - ячейка, для которой произошло событие, объект класса [Ctrl.Grid.ICell](topic:Com.Custom.ComClasses.Ctrl.Grid.ICell.Default).

**aValue** - текущее значение ячейки.

## Назначение

Обработка события, происходящего при удалении значения ячейки таблицы.

Если возвращает True, значение ячейки удаляется.

Значение этого типа используется для задания обработчика [OnDelCellValue](OnDelCellValue).
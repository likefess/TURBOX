---
Link: Com.Ctrl.IGrid.@TOnChangeCellValue
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TOnChangeCellValue

## Описание

    type TOnChangeCellValue :func (aCell :Ctrl.Grid.ICell; aValue :Variant; var aNewValue :Variant) :Logical;

## Параметры

**aCell** - ячейка, для которой произошло событие, объект класса [Ctrl.Grid.ICell](topic:Com.Custom.ComClasses.Ctrl.Grid.ICell.Default).

**aValue** - текущее значение ячейки.

**aNewValue** - новое значение.

## Назначение

Обработка события, происходящего при изменении значения ячейки таблицы.

Если возвращает True, изменение значения происходит.

Значение этого типа используется для задания обработчика [OnChangeCellValue](OnChangeCellValue).



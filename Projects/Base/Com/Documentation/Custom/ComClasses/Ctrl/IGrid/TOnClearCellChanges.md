---
Link: Com.Ctrl.IGrid.@TOnClearCellChanges
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TOnClearCellChanges

## Описание

    type TOnClearCellChanges :func (aCell :Ctrl.Grid.ICell; aValue :Variant; aRestoredValue :Variant) :Logical;

## Параметры

**aCell** - ячейка, для которой произошло событие, объект класса [Ctrl.Grid.ICell](topic:Com.Custom.ComClasses.Ctrl.Grid.ICell.Default).

**aValue** - текущее значение ячейки.

**aRestoredValue** - восстанавливаемое значение.

## Назначение

Обработка события, которое происходит при отмене изменений ячейки.

Если возращает True, изменения сбрасываются.

Значение этого типа используется для задания обработчика [OnClearCellChanges](OnClearCellChanges).



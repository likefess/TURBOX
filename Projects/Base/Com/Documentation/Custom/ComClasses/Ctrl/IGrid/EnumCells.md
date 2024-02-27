---
Link: Com.Ctrl.IGrid.@EnumCells
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Процедура EnumCells

## Описание

    proc EnumCells(aHandler :func (aCell :Ctrl.Grid.ICell) :Logical;
                   {aEnumKind :TEnumCellsKind}; {aValue :Variant});

## Параметры

**aHandler** - обработчик, применяемый к каждой ячейке.
Должен возвращать False для продолжения обработки и True - для прерывания обработки.

* **aCell** - ячейка, объект класса [Ctrl.Grids.Cell](topic:.Custom.ComClasses.Ctrl.Grids.Cell.Default).

**aEnumKind** - тип перебора ячеек, константа типа [TEnumCellsKind](topic:.Custom.ComClasses.Ctrl.IGrid.TEnumCellsKind).

**aValue** - значение, с которым выбираются ячейки, если **aEnumKind** = enumFiltred.

## Назначение

Перебор всех ячеек в гриде.
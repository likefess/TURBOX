---
Link: Com.Ctrl.IGrid.@DoInput
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Функция DoInput

## Описание

    func DoInput(aColumn :Ctrl.Grid.INode; aRow :Ctrl.Grid.INode; aValue :Variant) :Variant;

## Параметры

**aColumn** - столбец, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aRow** - строка, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aValue** - новое значение.

## Назначение

Действие при вводе в ячейку.

Возвращает True, если значение ячейки изменяется.
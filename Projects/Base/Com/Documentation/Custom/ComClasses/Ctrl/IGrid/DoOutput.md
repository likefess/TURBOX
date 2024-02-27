---
Link: Com.Ctrl.IGrid.@DoOutput
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Функция DoOutput

## Описание

    func DoOutput(aColumn :Ctrl.Grid.INode; aRow :Ctrl.Grid.INode) :Variant;

## Параметры

**aColumn** - столбец, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aRow** - строка, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

## Назначение

Действие при выводе значения ячейки.

Возвращаемое значение не влияет собственно на значение ячейки - изменяется лишь значение,
предназначенное для вывода.
---
Link: Com.Ctrl.IGrid.@DoClickCell
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Функция DoClickCell

## Описание

    func DoClickCell(aColumn :Ctrl.Grid.INode; aRow :Ctrl.Grid.INode; aAction :ClickTypes) :Logical;

## Параметры

**aColumn** - столбец, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aRow** - строка, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aAction** - тип нажатия, константа типа [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes).

## Назначение

Действие при нажатии на ячейку.

Если возвращает True, продолжается стандартная обработка.
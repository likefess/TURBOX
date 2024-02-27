---
Link: Com.Ctrl.IGrid.@DoClickNode
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Функция DoClickNode

## Описание

    func DoClickNode(aNode :Ctrl.Grid.INode; aAction :ClickTypes) :Logical;

## Параметры

**aNode** - нода, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aAction** - тип нажатия, константа типа [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes).

## Назначение

Действие при нажатии на ноду.

Если возвращает True, продолжается стандартная обработка.
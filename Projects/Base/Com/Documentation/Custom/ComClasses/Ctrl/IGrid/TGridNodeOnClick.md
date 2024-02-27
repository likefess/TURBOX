---
Link: Com.Ctrl.IGrid.@TGridNodeOnClick
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TGridNodeOnClick

## Описание

    type TGridNodeOnClick :func (aNode :Ctrl.Grid.INode; anAction :ClickTypes) :Logical;

## Параметры

**aNode** - нода, для которой произошло событие, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**anAction** - тип нажатия, константа типа [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes).

## Назначение

Обработка события, которое происходит при нажатии на ноду.

Если возвращает True, продолжается стандартная обработка.

Значение этого типа используется для задания обработчика [OnClickNode](OnClickNode).
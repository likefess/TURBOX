---
Link: Com.Ctrl.IGrid.@TGridNodeOnEnter
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TGridNodeOnEnter

## Описание

    type TGridNodeOnEnter :func (aNode :Ctrl.Grid.INode; anAction :EnterTypes) :Logical;

## Параметры

**aNode** - нода, для которой произошло событие, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**anAction** - равно True, если ячейка выделена.

## Назначение

Обработка события, которое происходит при входе в ноду.
---
Link: Com.Ctrl.IGrid.@OnAddNodeLeaf
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Событие OnAddNodeLeaf

## Описание

    OnAddNodeLeaf :proc (aNode :Ctrl.Grid.INode; aLeaf :Ctrl.Grid.INode);

## Параметры

**aNode** - нода, на которую добавляется конечная,
объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

**aLeaf** - конечная нода, объект класса [Ctrl.Grid.INode](topic:Com.Custom.ComClasses.Ctrl.Grid.INode.Default).

## Назначение

Обработчик события, которое происходит при добавлении конечной ноды.
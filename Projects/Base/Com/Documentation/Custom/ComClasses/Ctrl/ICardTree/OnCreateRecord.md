---
Link: .Ctrl.ICardTree.@OnCreateRecord
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[ICardTree](Default)

# Событие OnCreateRecord

## Описание

    OnCreateRecord :proc(aRec :Rec.IRecord);

## Параметры

**aRec** - создаваемая запись.

## Назначение

Обработчик события, которое происходит при создании записи в дереве картотеки.

Это событие возникает только при добавлении новой записи в дерево картотеки,
но не при дублировании старой.



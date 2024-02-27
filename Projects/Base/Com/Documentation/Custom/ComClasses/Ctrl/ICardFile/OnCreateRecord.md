---
Link: .Ctrl.ICardFile.@OnCreateRecord
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Событие OnCreateRecord

## Описание

    OnCreateRecord :proc(aRec :Rec.IRecord);

## Параметры

**aRec** - создаваемая запись.

## Назначение

Обработчик события, которое происходит при создании записи в картотеке.

Это событие возникает только при добавлении новой записи в картотеку,
но не при дублировании старой. Оно предназначено для управления созданием новой записи
и позволяет, например, автоматизировать добавление новой записи в гетерогенных картотеках.
Там, как известно, при попытке добавить запись открывается стандартный диалог выбора класса
добавляемой записи, что не всегда удобно.
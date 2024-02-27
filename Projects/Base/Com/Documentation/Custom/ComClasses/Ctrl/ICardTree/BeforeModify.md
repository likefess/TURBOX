---
Link: .Ctrl.ICardTree.@BeforeModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[ICardTree](Default)

# Событие BeforeModify

## Описание

    BeforeModify :func(aSender :Ctrl.ICardTree; aAction :ModifyActions;
                       aRec :Rec.IRecord; aGroup :Rec.IRecord) :Logical;

## Параметры

**aSender** - указатель на объект класса [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default),
с которым произошло событие;

**aAction** - действие, которое производится над записями картотеки (удаление, восстановление,
перемещение или копирование; перечислимый тип [ModifyActions](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ModifyActions));

**aRec** - запись, над которой производится действие, если действие выполняется сразу
над несколькими записями, параметр aRec равен nil;

**aGroup** - целевая группа, в которую переносится запись или набор записей в случае
перемещения или копирования.

## Назначение

Обработчик события, которое происходит перед началом изменения одной или нескольких выделенных записей.
происходит перед началом изменения одной записи. Если какое-либо действие выполняется сразу
над группой записей, то событие **BeforeModify** происходит лишь один раз.

Если обработчик возвращает TRUE, то тем самым разрешается выполнение действия и будут
сгенерированы все последующие события - в первую очередь [OnModify](topic:.Custom.ComClasses.Ctrl.ICardTree.OnModify).
Если обработчик **BeforeModify** вернет FALSE, выполнение действия над записями картотеки
прекращается.

При входе в обработчик Result равен FALSE (действия запрещены). 



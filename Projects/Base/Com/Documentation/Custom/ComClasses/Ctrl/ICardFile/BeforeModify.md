---
Link: .Ctrl.ICardFile.@BeforeModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Событие BeforeModify

## Описание

    BeforeModify :func(aSender :Ctrl.ICardFile; aAction :ModifyActions;
                       aRec :Rec.IRecord; aGroup :Rec.IRecord) :Logical;

## Параметры

**aSender** - картотека, из которой происходит вызов функции-обработчика;

**aAction** - действие, которое производится над записями картотеки (удаление, восстановление,
перемещение или копирование; перечислимый тип [ModifyActions](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ModifyActions));

**aRec** - запись, над которой производится действие, если действие выполняется сразу
над несколькими записями, параметр aRec равен nil;

**aGroup** - целевая группа, в которую переносится запись или набор записей в случае
перемещения или копирования.

## Назначение

Обработчик события, которое происходит перед началом изменения одной или нескольких выделенных записей.
Если какое-либо действие выполняется сразу над группой записей, то событие
происходит лишь один раз – при этом перечень выделенных записей можно получить из обработчика,
обратившись к полю [Selected](topic:.Custom.ComClasses.Ctrl.ICardBase.Selected).

Если обработчик возвращает TRUE, то тем самым разрешается выполнение действия и будут
сгенерированы все последующие события - в первую очередь [OnModify](topic:.Custom.ComClasses.Ctrl.ICardFile.OnModify)
(это событие будет генерироваться для каждой записи из общего числа выделенных).
Если обработчик BeforeModify вернет FALSE, выполнение действия над записями картотеки
прекращается.

При входе в обработчик Result равен FALSE (действия запрещены).

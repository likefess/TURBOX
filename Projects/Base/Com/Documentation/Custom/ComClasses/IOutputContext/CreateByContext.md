---
Link: .IOutputContext.@CreateByContext
---

[IContext](..\IContext.Default) : [IOutputContext](Default)

# Функция CreateByContext

## Описание

    func CreateByContext (aContext :IOutputContext; aAction :OutputTypes; {aSender :Ctrl.IControlCell}) :IOutputContext;

## Параметры

**aContext** - контекст, на базе которого создается новый.

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes)).

**aSender** - ячейка, для которой формируется контекст.

## Назначение

Создание нового контекста на базе существующего, возможно, с другими значениями
[Action](Action) или [Sender](..\IContext.Sender).
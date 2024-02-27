---
Link: .IOutputContext.@CreateOnOutput
---

[IContext](..\IContext.Default) : [IOutputContext](Default)

# Функция CreateOnOutput

## Описание

    func CreateOnOutput (aSender :Ctrl.IControlCell; aAction :OutputTypes; {aFormat :String}) :IOutputContext;

## Параметры

**aSender** - ячейка, для которой формируется контекст.

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes)).

**aFormat** - формат (внешнее представление) данных.

## Назначение

Создание контекста.
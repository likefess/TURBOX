---
Link: .IOutputContext.@CreateByCard
---

[IContext](..\IContext.Default) : [IOutputContext](Default)

# Функция CreateByCard

## Описание

    func CreateByCard (aControl :Ctrl.IControlCell; aRec :Record; aAction :OutputTypes; {aFormat :String}) :IOutputContext;

## Параметры

**aSender** - ячейка, для которой формируется контекст.

**aRec** - запись, которая содержится в ячейке.

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes)).

**aFormat** - формат (внешнее представление) данных.

## Назначение

Создание контекста для ячейки, лежащей в картотеке.
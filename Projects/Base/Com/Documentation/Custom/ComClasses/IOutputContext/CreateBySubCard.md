---
Link: .IOutputContext.@CreateBySubCard
---

[IContext](..\IContext.Default) : [IOutputContext](Default)

# Функция CreateBySubCard

## Описание

    func CreateBySubCard (aControl :Ctrl.IControlCell; aStruct :IStruct; aIndex :Integer;
                          aAction :OutputTypes; {aFormat :String}) :IOutputContext;

## Параметры

**aSender** - ячейка, для которой формируется контекст.

**aStruct** - структура подтаблицы картотеки.

**aIndex** - номер строки.

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes)).

**aFormat** - формат (внешнее представление) данных.

## Назначение

Создание контекста для ячейки, лежащей в подтаблице картотеки.
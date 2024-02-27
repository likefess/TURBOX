---
Link: .IOutputContext.@CreateByCell
---

[IContext](..\IContext.Default) : [IOutputContext](Default)

# Функция CreateByCell

## Описание

    func CreateByCell (aControl :Ctrl.IControlCell; aTable :Logical; aIndex :Integer;
                       aAction :OutputTypes; {aFormat :String}) :IOutputContext;

## Параметры

**aSender** - ячейка, для которой формируется контекст.

**aTable** - равно True, если ячейка лежит в таблице.

**aIndex** - номер строки, если ячейка лежит в таблице.

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes)).

**aFormat** - формат (внешнее представление) данных.

## Назначение

Создание контекста для ячейки, лежащей в таблице или в обычной клетке.
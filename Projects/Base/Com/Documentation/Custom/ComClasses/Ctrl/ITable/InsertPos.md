---
Link: .Ctrl.ITable.@InsertPos
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура InsertPos

## Описание

    proc InsertPos(aIndex :Integer; {var aStruct :IStruct}; {aSetPos :Logical});

## Параметры

**aIndex** - позиция, на которую происходит вставка.

**aStruct** - структура подтаблицы, привязанной к таблице.

**aSetPos** - флаг установки фокуса на добавленную позицию, по умолчанию True.

## Назначение

Добавление новой строки в таблицу.

Если к секции привязана подтаблица, то добавляется кадр в подтаблице.
Если к секции привязаны массивы, то добавляется значения в массив.

Используется для вызова из пользовательского обработчика
[OnInsert](topic:.Custom.ComClasses.Ctrl.ITable.OnInsert).

## Примечание

Если планируется несколько подряд вставок/перемещений, то нужно
передать параметр aSetPos = False для всех вставок/перемещений, кроме последнего.
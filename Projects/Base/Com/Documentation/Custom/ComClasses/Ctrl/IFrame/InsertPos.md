---
Link: .Ctrl.IFrame.@InsertPos
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура InsertPos

## Описание

    proc InsertPos(aIndex :Integer; {var aStruct :IStruct}; {aSetPos :Logical});

## Параметры

**aIndex** - позиция, на которую происходит вставка.

**aStruct** - структура подтаблицы, привязанной к фрейму.

**aSetPos** - флаг установки фокуса на добавленную позицию. По умолчанию True.

## Назначение

Добавление объекта на фрейм.

Если к секции привязана подтаблица, то добавляется кадр в подтаблице.
Если к секции привязаны массивы, то добавляется значения в массив.

## <span style="color:red">Внимание</span>

Метод устарел.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
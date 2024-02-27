---
Link: .Ctrl.IFrame.@DeletePos
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура DeletePos

## Описание

    proc DeletePos(aIndex :Integer; {aSetPos :Logical});

## Параметры

**aIndex** - позиция удаляемого объекта.

**aSetPos** - флаг установки фокуса на добавленную позицию. По умолчанию True.

## Назначение

Удаление объекта на фрейме.

Если к секции привязана подтаблица, то удаляется кадр в подтаблице.
Если к секции привязаны массивы, то удаляется значения из массивов.

## <span style="color:red">Внимание</span>

Метод устарел.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
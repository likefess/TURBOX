---
Link: .Ctrl.IFrame.@OnDelete
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Событие OnDelete

## Описание

    OnDelete :TOnDelete;

## Назначение

Обработчик события, которое происходит при удалении позиции табличного фрейма.

Если в обработчике нужно "вручную" вызвать действие (добавление/удаление/смена позиции),
то нужно вызвать один из методов

    proc InsertPos(aIndex :Integer; var aStruct :IStruct = nil; aSetPos :Logical = True);
    proc DeletePos(aIndex :Integer);
    proc PosUp(aIndex :Integer; aSetPos :Logical = True);
    proc PosDown(aIndex :Integer; aSetPos :Logical = True);

Тип функции-обработчика -
[TOnDelete](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnDelete).

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).

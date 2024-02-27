---
Link: .Ctrl.IFrame.@Delete
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура Delete

## Описание

    proc Delete(aIndex :Integer);

## Параметры

**aIndex** - номер строки.

## Назначение

Эмуляции удаления строки таблицы пользователем.

Нельзя вызывать из пользовательского обработчика OnDelete. Используйте для этого метод
[DeletePos](topic:.Custom.ComClasses.Ctrl.IFrame.DeletePos).

## <span style="color:red">Внимание</span>

Метод устарел.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
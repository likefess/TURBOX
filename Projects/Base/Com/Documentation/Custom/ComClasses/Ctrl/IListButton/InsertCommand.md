---
Link: .Ctrl.IListButton.@InsertCommand
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](topic:Com.Custom.ComClasses.Ctrl.IButton.Default) :
[Ctrl.IListButton](Default)

# Процедура InsertCommand

## Описание

    proc InsertCommand(aCommand :Ctrl.IButton; {iPos :Integer});

## Параметры

**aCommand** - кнопка, объект класса [Ctrl.IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default).

**iPos** - позиция, на которую происходит вставка. По умолчанию 1.

## Назначение

Вставка кнопки на указанную позицию в выпадающий список.
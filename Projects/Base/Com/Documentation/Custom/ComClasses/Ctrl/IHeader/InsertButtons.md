---
Link: .Ctrl.IHeader.@InsertButtons
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](topic:Com.Custom.ComClasses.Ctrl.IFrame.Default) :
[Ctrl.IHeader](Default)

# Процедура InsertButtons

## Описание

    proc InsertButtons(aButtonList :Ctrl.IButton[]; {iPos :Integer});

## Параметры

**aButtonList** - кнопки, массив объектов класса [Ctrl.IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default).

**iPos** - позиция, на которую происходит вставка. По умолчанию 1.

## Назначение

Вставка новых кнопок-команд перед кнопкой-командой номер **iPos**.
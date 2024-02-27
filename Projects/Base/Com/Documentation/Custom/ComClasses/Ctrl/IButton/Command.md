---
Link: Com.Ctrl.IButton.@Command
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Поле Command

## Описание

    Command :Cmd.ICommand;

## Назначение

Связанная с кнопкой команда в виде объекта класса [Cmd.ICommand](topic:.Custom.ComClasses.Cmd.ICommand.Default).

Если обработчик [OnClick](topic:.Custom.ComClasses.Ctrl.IControlCell.OnClick) не указан,
то вызывается данная команда. Если обработчик указан, то вызывается указанный обработчик.

Если для кнопки, связанной с командой не указана иконка, то она берется из команды.

Доступность кнопки, связанной с командой, определяется доступностью команды.

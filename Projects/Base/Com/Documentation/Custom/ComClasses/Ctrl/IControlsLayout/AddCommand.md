---
Link: Com.Ctrl.IControlsLayout.@AddCommand
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddCommand

## Описание

    func AddCommand(aCommand :String; aOnClick :TOnClick; anImageName :String; aLabel :String) :Ctrl.IButton;

## Параметры

**aCommand** - название команды.

**aOnClick** - обработчик события, происходящего при нажатии,
тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

**anImageName** - название иконки.

**aLabel** - надпись на кнопке.

## Назначение

Добавление [кнопки](topic:.Custom.ComClasses.Ctrl.IButton.Default) с заданной командой.

Возвращает ссылку на добавленный элемент.
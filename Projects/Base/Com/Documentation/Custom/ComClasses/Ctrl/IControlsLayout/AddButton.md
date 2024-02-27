---
Link: Com.Ctrl.IControlsLayout.@AddButton
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddButton

## Описание

    func AddButton({aLabel :String}; aOnClick :TOnClick; {anImageName :String}; {aCommand :String}) :Ctrl.IButton;

## Параметры

**aLabel** - надпись на кнопке.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

**anImageName** - иконка.

**aCommand** - действие при нажатии.

## Назначение

Добавление [кнопки](topic:.Custom.ComClasses.Ctrl.IButton.Default) с заданными параметрами.

Возвращает ссылку на добавленный элемент.
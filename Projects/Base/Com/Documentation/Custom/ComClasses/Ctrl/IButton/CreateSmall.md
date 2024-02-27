---
Link: Com.Ctrl.IButton.@CreateSmall
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Функция CreateSmall

## Описание

    func CreateSmall({aName :String}; {aIconName :String}; {aOnClick :TOnClick}; {aDescription :String}) :Ctrl.IButton;

## Параметры

**aName** - название кнопки.

**aIconName** - название иконки.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

**aDescription** - описание.

## Назначение

Упрощённое создание кнопки.
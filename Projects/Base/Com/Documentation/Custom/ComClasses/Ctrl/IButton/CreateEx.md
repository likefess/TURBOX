---
Link: .Ctrl.IButton.@CreateEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Функция CreateEx

## Описание

    func CreateEx({aName :String}; aWidth :Numeric; aCaption :String; {aOnClick :TOnClick}) :Ctrl.IButton;

## Параметры

**aName** - имя создаваемой кнопки.

**aWidth** - ширина кнопки.

**aCaption** - надпись на кнопке.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

## Назначение

Создание кнопки с заданными параметрами.
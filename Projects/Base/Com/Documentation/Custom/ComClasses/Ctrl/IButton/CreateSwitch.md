---
Link: .Ctrl.IButton.@CreateSwitch
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Функция CreateSwitch

## Описание

    func CreateSwitch(aDescription :String; {aOnClick :TOnClick}; {aField :Fld.IValue}; {aIconName :String}) :Ctrl.IButton;

## Параметры

**aDescription** - надпись на кнопке.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

**aField** - переменная, которая редактируется или отображается кнопкой.
Объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aIconName** - иконка.

## Назначение

Создание кнопки, работающей как флаг.
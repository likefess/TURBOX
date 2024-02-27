---
Title: Компонент IButton
Link: .Ctrl.IButton
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default)

# Ctrl.IButton

Класс *Ctrl.IButton* предназначен для работы с кнопками.

Кнопка - это элемент управления, производящий действия при нажатии на него.
Кнопка может быть использована в качестве переключателя (флага), т.е.
принимать значения True и False, соответствующие "нажатому" и "отжатому" состояниям.

Наследует все свойства и методы родительского класса Ctrl.IControlCell.

Непосредственно в классе *Ctrl.IButton* определены следующие свойства класса:
* [Функция CreateEx](CreateEx)
* [Функция CreateSmall](CreateSmall)
* [Функция CreateCommand](CreateCommand)
* [Функция CreateByCommand](CreateByCommand)
* [Функция CreateSwitch](CreateSwitch)

и свойства объекта:
<!--* [Поле ButtonType](ButtonType) web -->
* [Поле Field](Field)
* [Поле IsSwitch](IsSwitch)
* [Поле Command](Command)
* [Поле CommandName](CommandName)
<!--* [Поле WebCommandName](WebCommandName) web -->
* [Поле Description](Description)
* [Поле NeedContext](NeedContext)
<!--* * [Поле WebEnabled](WebEnabled) web -->
* [Поле OnList](OnList)
* [Процедура SetValue](SetValue)
* [Процедура OnUpdateCommand](OnUpdateCommand)
---
Title: Компонент Item
Link: .Ctrl.Diagram.Item
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default)

# Ctrl.Diagram.Item

Класс *Ctrl.Diagram.Item* предназначен для описания элемента диаграммы.

Наследует все свойства и методы родительского класса Ctrl.Diagram.BasePoint.

Непосредственно в классе *Ctrl.Diagram.Item* определены следующие свойства класса:
* [Перечислимый тип TItemTypes](TItemTypes)
* [Перечислимый тип TItemToolStateTypes](TItemToolStateTypes)
* [Константа tsUnknown](tsUnknown)
* [Константа tsConnection](tsConnection)
* [Константа tsShape](tsShape)
* [Функция ItemTypeFromString](ItemTypeFromString)
* [Функция ItemTypeToString](ItemTypeToString)

и свойства объекта:
* [Поле ItemType](ItemType)
* [Поле Editable](Editable)
* [Поле InnerLabel](InnerLabel)
* [Поле Hint](Hint)
* [Поле Hover](Hover)
* [Поле Z](Z)
* [Процедура RefreshDiagram](RefreshDiagram)

Классы-наследники:

* [Ctrl.Diagram.Connection](topic:.Custom.ComClasses.Ctrl.Diagram.Connection.Default)
* [Ctrl.Diagram.Shape](topic:.Custom.ComClasses.Ctrl.Diagram.Shape.Default)
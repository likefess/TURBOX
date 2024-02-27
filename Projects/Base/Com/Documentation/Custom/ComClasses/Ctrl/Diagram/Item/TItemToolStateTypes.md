---
Link: Com.Ctrl.Diagram.Item.@TItemToolStateTypes
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default) :
[Ctrl.Diagram.Item](Default)

# Перечислимый тип TItemToolStateTypes

## Описание

    type TItemToolStateTypes = (itstDefault, itstTrue, itstFalse)

## Назначение

Установка значения свойств, управляющих доступностью действий над элементом.

Перечислимый тип TItemToolStateTypes включает следующие константы:

**itstDefault** - состояние, установленное по умолчанию;

**itstTrue** - разрешено;

**itstFalse** - запрещено.

Константы, определенные в данном типе, используются в классах [Ctrl.IDiagramJS](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Default),
[Ctrl.Diagram.Shape](topic:.Custom.ComClasses.Ctrl.Diagram.Shape.Default) и [Ctrl.Diagram.Connection](topic:.Custom.ComClasses.Ctrl.Diagram.Connection.Default).
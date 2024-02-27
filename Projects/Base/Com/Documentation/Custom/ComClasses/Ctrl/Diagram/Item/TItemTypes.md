---
Link: .Ctrl.Diagram.Item.@TItemTypes
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default) :
[Ctrl.Diagram.Item](Default)

# Перечислимый тип TItemTypes

## Описание

    type TItemTypes = (itUnknown, itShape, itConnection);

## Назначение

Обозначение типов элементов на диаграммах.

Перечислимый тип TItemTypes включает следующие константы:

**itUnknown** - неизвестный тип ([tsUnknown](tsUnknown));

**itShape**  - фигура ([tsShape](tsShape));

**itConnection** - соединительный элемент ([tsConnection](tsConnection)).

Константы, определенные в данном типе, используются для задания свойства [ItemType](ItemType),
а также в методах [ItemTypeFromString](ItemTypeFromString)
и [ItemTypeToString](ItemTypeToString).

---
Link: .Ctrl.Diagram.Shape.@TShapeTypes
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default) :
[Ctrl.Diagram.Item](topic:Com.Custom.ComClasses.Ctrl.Diagram.Item.Default) :
[Ctrl.Diagram.Shape](Default)

# Перечислимый тип TShapeTypes

## Описание

    type TShapeTypes = (stDefault, stCircle, stDiamond, stFrame);

## Назначение

Используется для обозначения типов фигур на диаграммах.

Перечислимый тип TShapeTypes включает следующие константы:

**tsDefault** - обычный квадрат или прямоугольник, используется по умолчанию ([tsDefault](tsDefault)).

**tsCircle**  - круг ([tsCircle](tsCircle)).

**tsDiamond** - ромб ([tsDiamond](tsDiamond)).

**tsFrame**   - фрейм ([tsFrame](tsFrame)).

Константы, определенные в данном типе, используются для задания свойства [ShapeType](ShapeType),
а также в методах [ShapeTypeFromString](ShapeTypeFromString)
и [ShapeTypeToString](ShapeTypeToString).

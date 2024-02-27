---
Link: .Ctrl.Diagram.Marker.@TMarkerTypes
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.Marker](Default)

# Перечислимый тип TMarkerTypes

## Описание

    type TMarkerTypes = (mtNone, mtUnknown, mtArrow, mtArrowFill, mtCircle,
                         mtCircleFill, mtArrowCheck, mtArrowCheckInner, mtDiamond);

## Назначение

Используется для обозначения типов маркеров на диаграммах.

Перечислимый тип TMarkerTypes включает следующие константы:

**mtNone**             - не указан;

**mtUnknown**          - неизвестный тип;

**mtArrow**            - стрелка;

**mtArrowFill**        - закрашенная стрелка;

**mtCircle**           - круг;

**mtCircleFill**       - закрашенный круг;

**mtArrowCheck**       - стрелка-галка;

**mtArrowCheckInner**  - стрелка-галка внутренняя;

**mtDiamond**          - ромб.

Константы, определенные в данном типе, используются для задания свойства [MarkerType](MarkerType),
а также в методах [MarkerTypeFromString](MarkerTypeFromString)
и [MarkerTypeToString](MarkerTypeToString).

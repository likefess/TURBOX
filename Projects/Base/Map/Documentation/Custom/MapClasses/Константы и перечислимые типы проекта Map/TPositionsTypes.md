---
Link: Com.Consts.@TPositionsTypes
---

# Перечислимый тип TPositionsTypes

## Описание

    type TPositionsTypes = (ptUnknown, ptTopleft, ptTopright, ptBottomleft, ptBottomright);

## Назначение

Используется для обозначения положения легенды на карте.

Перечислимый тип TPositionsTypes включает следующие константы:

**ptUnknown** - неизвестное;

**ptTopleft** - верхний левый угол;

**ptTopright** - верхний правый угол;

**ptBottomleft** - нижний левый угол;

**ptBottomright** - нижний правый угол.

Константы, определенные в данном типе, используются для задания свойства
[Position](topic:.Custom.MapClasses.Ctrl.IMapJS.Position), а также в методах
[PositionsTypeFromString](topic:.Custom.MapClasses.Ctrl.IMapJS.PositionsTypeFromString)
и [PositionsTypeToString](topic:.Custom.MapClasses.Ctrl.IMapJS.PositionsTypeToString).
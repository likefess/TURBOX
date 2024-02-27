---
Link: Com.Consts.@TMarkersTypes
---

# Перечислимый тип TMarkersTypes

## Описание

    type TMarkersTypes = (mtUnknown, mtAll, mtLast, mtHide);

## Назначение

Используется для обозначения режима отображения меток на картах.

Перечислимый тип TMarkersTypes включает следующие константы:

**mtUnknown** - не задан;

**mtAll** - отображать все метки;

**mtLast** - отображать последнюю добавленную метку;

**mtHide** - скрывать все метки.

Константы, определенные в данном типе, используются для задания свойства
[Markers](topic:.Custom.MapClasses.Ctrl.IMapJS.Markers), а также в методах
[MarkersTypeFromString](topic:.Custom.MapClasses.Ctrl.IMapJS.MarkersTypeFromString)
и [MarkersTypeToString](topic:.Custom.MapClasses.Ctrl.IMapJS.MarkersTypeToString).
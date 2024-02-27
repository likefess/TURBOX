---
Link: .Consts.@AlignmentTypes
---

# Перечислимый тип AlignmentTypes

## Описание

    type AlignmentTypes = (
      DefaultAlign = -1
     ,LeftAlign    = 0
     ,RightAlign   = 1
     ,CenterAlign  = 2
    );

## Назначение

Используется для обозачения типа выравнивания полей в контролах.

Перечислимый тип AlignmentTypes включает следующие константы:

**DefaultAlign** - способ выравнивания по умолчанию;

**LeftAlign** - выравнивание по левому краю (по верхнему краю при вертикальном расположении);

**RightAlign** - выравнивание по правому краю (по нижнему краю при вертикальном расположении);

**CenterAlign** - выравнивание по центру.

Константы, определенные в данном типе, используются в свойствах
[Alignment](topic:.Custom.ComClasses.Ctrl.IControl.Alignment),
[VertAlignment](topic:.Custom.ComClasses.Ctrl.IControl.VertAlignment),
и функции
[GetAlignment](topic:.Custom.ComClasses.Ctrl.IControl.GetAlignment)
класса [IControl](topic:.Custom.ComClasses.Ctrl.IControl.Default).

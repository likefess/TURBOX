# Перечислимый тип FrameTypes

## Описание

    type FrameTypes = (
      SimpleFrame   = 0
     ,ComplexFrame  = 1
     ,TableFrame    = 2
     ,CardFrame     = 3
     ,FrameWithForm = 4
     ,PictureFrame  = 5
    );

## Назначение

Используется для задания типа фрейма.

Перечислимый тип FrameTypes включает следующие константы:

**SimpleFrame** - простой фрейм;

**ComplexFrame** - составной фрейм;

**TableFrame** - табличный фрейм;

**CardFrame** - фрейм-картотека;

**FrameWithForm** - фрейм с формой;

**PictureFrame** - фрейм-рисунок.

Константы, определенные в данном типе, используются в свойстве
[FrameType](topic:.Custom.ComClasses.Ctrl.IFrame.FrameType)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default).
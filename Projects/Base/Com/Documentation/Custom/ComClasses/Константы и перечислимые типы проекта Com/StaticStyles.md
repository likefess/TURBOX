---
Link: Com.Consts.@StaticStyles
---

# Перечислимый тип StaticStyles

## Описание

    type StaticStyles = (
      NormalText      = 0
     ,StaticButton    = 1
     ,StaticHeader    = 2
     ,StaticHyperlink = 3
    );

## Назначение

Используется для задания стиля статика.

Перечислимый тип StaticStyles включает следующие константы:

**NormalText** - обычный текст;

**StaticButton** - кнопка;

**StaticHeader** - заголовок;

**StaticHyperlink** - гиперссылка.

Константы, определенные в данном типе, используются в свойстве
[StaticStyle](topic:.Custom.ComClasses.Ctrl.IStatic.StaticStyle)
класса [IStatic](topic:.Custom.ComClasses.Ctrl.IStatic.Default).
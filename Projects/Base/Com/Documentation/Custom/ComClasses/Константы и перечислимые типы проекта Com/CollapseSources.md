---
Link: .Consts.@CollapseSources
---

# Перечислимый тип CollapseSources

## Описание

    type CollapseSources = (csNone = 0,
                            csPreSet = 1,
                            csManual = 2);

## Назначение

Используется для обозначения причин сворачивания/разворачивания бокса.

Перечислимый тип CollapseSources включает следующие константы:

**csNone** - программная установка свойства;

**csPreSet** - первоначальная установка свойства при инициализации формы;

**csManual** - ручное сворачивание/разворачивание бокса.

Константы, определенные в данном типе, используются в свойстве
[CollapseSource](topic:.Custom.ComClasses.Ctrl.IBox.CollapseSource), а также
в обработчиках событий [OnVerifyCollapsed](topic:.Custom.ComClasses.Ctrl.IBox.OnVerifyCollapsed)
и [OnChangeCollapsed](topic:.Custom.ComClasses.Ctrl.IBox.OnChangeCollapsed)
класса [IBox](topic:.Custom.ComClasses.Ctrl.IBox.Default).

---
Link: Com.Ctrl.IBrowser.@TWebEngine
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IBrowser](Default)

# Перечислимый тип TWebEngine

## Описание

    type TWebEngine = (Auto, IE, Edge, None)

## Назначение

Задание браузерного движка.

Перечислимый тип TWebEngine включает следующие константы:

**Auto** - использовать Edge, если возможно, иначе - IE (умолчание).

**IE** - всегда использовать IE.

**Edge** - всегда использовать Edge (Chromium).

**None** - движок не задан.

Константы, определенные в данном типе, используются
в свойстве [UseEngine](UseEngine) и методе [Engine](Engine).



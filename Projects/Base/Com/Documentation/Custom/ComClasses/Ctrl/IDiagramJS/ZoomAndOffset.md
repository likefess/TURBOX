---
Link: .Ctrl.IDiagramJS.@ZoomAndOffset
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Процедура ZoomAndOffset

## Описание

    proc ZoomAndOffset({aScale :Numeric}; {aOffsetX :Numeric}; {aOffsetY :Numeric});

## Параметры

**aScale** - масштаб.

**aOffsetX** - смещение по оси X.

**aOffsetY** - смещение по оси Y.

## Назначение

Установка параметров (свойств) смещения и масштаба за 1 раз. Если параметр не требуется менять,
то значение должно быть равно [NullValueDiagram](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.NullValueDiagram).

---

<b>Пример кода</b>

    aDiagram.ZoomAndOffset(2, 0, 0);
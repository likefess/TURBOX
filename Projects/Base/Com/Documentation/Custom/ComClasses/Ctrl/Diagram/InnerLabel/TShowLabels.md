---
Link: .Ctrl.Diagram.InnerLabel.@TShowLabels
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default) :
[Ctrl.Diagram.InnerLabel](Default)

# Перечислимый тип TShowLabels

## Описание

    type TShowLabels = (slNil, slTrue, slFalse, slHover, slHoverOut);

## Назначение

Используется для обозначения состояний показа текста элемента.

Перечислимый тип TShowLabels включает следующие константы:

**slNil**      - не определено;

**slTrue**     - показывать;

**slFalse**    - не показывать;

**slHover**    - показывать при наведении курсора;

**slHoverOut** - показывать при отведении курсора.

Константы, определенные в данном типе, используются для задания свойства [ShowLabel](ShowLabel),
в методах [ShowLabelFromString](ShowLabelFromString)
и [ShowLabelToString](ShowLabelToString), а также в методах [Ctrl.IDiagramJS.ShowLabelConnection](topic:.Custom.ComClasses.Ctrl.IDiagramJS.ShowLabelConnection)
и [Ctrl.IDiagramJS.ShowLabelShape](topic:.Custom.ComClasses.Ctrl.IDiagramJS.ShowLabelShape).
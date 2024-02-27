---
Link:.Consts.@TOnCustomCommand
---

# Тип TOnCustomCommand

## Описание

    type TOnCustomCommand = proc (aDiagram :Com.Ctrl.IDiagramJS; aItem :Com.Ctrl.Diagram.EventArgCustomCommand);

## Параметры

**aDiagram** - схема, для которой происходит вызов;

**aItem** - вызываемая команда, объект класса [EventArgCustomCommand](topic:.Custom.ComClasses.Ctrl.Diagram.EventArgCustomCommand.Default).

## Назначение

Тип TOnCustomCommand предназначен для задания обработчика события, которое
возникает при вызове пользовательских команд.

Используется для задания событий [IDiagramJS.OnCustomCommand](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnCustomCommand)
и [IDiagramJS.OnElementCommand](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnElementCommand).
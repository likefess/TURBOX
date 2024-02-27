# Тип TOnZoomDiagram

## Описание

    type TOnZoomDiagram = proc (aDiagram :Com.Ctrl.IDiagramJS);

## Параметры

**aDiagram** - диаграмма, для которой произошло событие масштабирования.

## Назначение

Тип TOnZoomDiagram предназначен для задания процедуры обработчика события, для выполнения действий после изменения масштаба диаграммы.

Значение этого типа используется в качестве аргумента функции [OnZoomDiagram](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnZoomDiagram)
класса [IDiagramJS](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Default)

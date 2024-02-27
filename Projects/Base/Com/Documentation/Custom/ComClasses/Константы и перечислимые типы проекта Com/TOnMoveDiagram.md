# Тип TOnMoveDiagram

## Описание

    type TOnMoveDiagram = proc (aDiagram :Com.Ctrl.IDiagramJS);

## Параметры

**aDiagram** - диаграмма, для которой произошло событие перемещения.

## Назначение

Тип TOnMoveDiagram предназначен для задания процедуры обработчика события, для выполнения действий после изменения свойств позиционирования диаграммы.

Значение этого типа используется в качестве аргумента функции [OnMoveDiagram](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnMoveDiagram)
класса [IDiagramJS](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Default)

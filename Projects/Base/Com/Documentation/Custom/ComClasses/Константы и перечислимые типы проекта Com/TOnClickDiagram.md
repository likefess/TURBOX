# Тип TOnClickDiagram

## Описание

    type TOnClickDiagram  = proc (aItem :Com.Ctrl.Diagram.EventArg);

## Параметры

**aItem** - данные об элементе, над которым произошло событие, в виде объекта класса
[EventArg](topic:.Custom.ComClasses.Ctrl.Diagram.EventArg.Default).

## Назначение

Тип TOnClickDiagram предназначен для задания процедуры обработчика события для выполнения действий при клике по элементу диаграмы.

Значение этого типа используется в качестве аргумента функции [OnClickItem](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnClickItem)
класса [IDiagramJS](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Default)


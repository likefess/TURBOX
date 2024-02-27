---
Link: .Consts.@TOnCreateElement
---

# Тип TOnCreateElement

## Описание

    type TOnCreateElement  = proc (aItem :Ctrl.Diagram.EventArg);

## Параметры

**aItem** - данные об элементе, над которым произошло событие, в виде объекта класса
[EventArg](topic:.Custom.ComClasses.Ctrl.Diagram.EventArg.Default).

## Назначение

Обработка события, которое происходит при добавлении элемента диаграммы.

Значение этого типа используется для задания обработчика [Ctrl.IDiagramJS.OnCreateElement](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnCreateElement).

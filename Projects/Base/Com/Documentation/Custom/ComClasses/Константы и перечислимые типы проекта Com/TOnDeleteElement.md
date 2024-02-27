---
Link: .Consts.@TOnDeleteElement
---

# Тип TOnDeleteElement

## Описание

    type TOnDeleteElement  = proc (aItem :Ctrl.Diagram.EventArg);

## Параметры

**aItem** - данные об элементе, над которым произошло событие, в виде объекта класса
[EventArg](topic:.Custom.ComClasses.Ctrl.Diagram.EventArg.Default).

## Назначение

Обработка события, которое происходит при удалении элемента диаграммы.

Значение этого типа используется для задания обработчика [Ctrl.IDiagramJS.OnDeleteElement](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnDeleteElement).

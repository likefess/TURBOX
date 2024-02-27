---
Link: .Consts.@TOnUpdateElement
---

# Тип TOnUpdateElement

## Описание

    type TOnUpdateElement  = proc (aItem :Ctrl.Diagram.EventArg);

## Параметры

**aItem** - данные об элементе, над которым произошло событие, в виде объекта класса
[EventArg](topic:.Custom.ComClasses.Ctrl.Diagram.EventArg.Default).

## Назначение

Обработка события, которое происходит при обновлении элемента диаграммы.

Значение этого типа используется для задания обработчика [Ctrl.IDiagramJS.OnUpdateElement](topic:.Custom.ComClasses.Ctrl.IDiagramJS.OnUpdateElement).

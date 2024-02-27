---
Link: Com.Ctrl.IGrid.@TGridOnDrawCell
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Тип TGridOnDrawCell

## Описание

    type TGridOnDrawCell :proc (aCell :Ctrl.Grid.ICellViewer; aSelected :Logical);

## Параметры

**aCell** - ячейка, для которой произошло событие, объект класса [Ctrl.Grid.ICell](topic:Com.Custom.ComClasses.Ctrl.Grid.ICell.Default).

**aSelected** - равно True, если ячейка выделена.

## Назначение

Динамическое изменение цветов фона и текста, а также параметров шрифта ячейки.

Значение этого типа используется для задания обработчика [OnDrawCell](OnDrawCell).
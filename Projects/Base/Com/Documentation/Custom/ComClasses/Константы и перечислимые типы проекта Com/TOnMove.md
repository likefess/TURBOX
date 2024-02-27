# Тип TOnMove

## Описание

    type TOnMove = proc(aSender :Ctrl.IFrame);

## Параметры

**aSender** - фрейм, для которого происходит вызов.

## Назначение

Тип TOnMove предназначен для задания процедуры-обработчика события,
возникающего при перемещении фрейма.

Используется для задания события [OnMove](topic:.Custom.ComClasses.Ctrl.IFrame.OnMove)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default).
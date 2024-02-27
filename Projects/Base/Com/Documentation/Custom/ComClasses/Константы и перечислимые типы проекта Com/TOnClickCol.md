---
Link:.Consts.@TOnClickCol
---

# Тип TOnClickCol

## Описание

    type TOnClickCol = proc(aSender :Ctrl.IControl; aRec :Rec.IRecord)

## Параметры

**aSender** - ячейка, для которой происходит вызов;

**aRec** - запись в картотеке.

## Назначение

Тип TOnClickCol предназначен для задания функции-обработчика события,
возникающего при нажатии на ячейку в строке картотеки.

Используется для задания события [OnColumnClick](topic:.Custom.ComClasses.Ctrl.IControlCell.OnColumnClick)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

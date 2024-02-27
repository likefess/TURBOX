---
Link:.Consts.@TOnClick
---

# Тип TOnClick

## Описание

    type TOnClick = proc(aSender :Ctrl.IControl; aIndex :Integer);

## Параметры

**aSender** - ячейка, для которой происходит вызов;

**aIndex** - номер строки, если ячейка лежит в таблице.

## Назначение

Тип TOnClick предназначен для задания функции-обработчика события,
возникающего при нажатии на ячейку.

Используется для задания события [OnClick](topic:.Custom.ComClasses.Ctrl.IControlCell.OnClick)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

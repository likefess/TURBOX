---
Link:.Consts.@TOnDrawEx
---

# Тип TOnDrawEx

## Описание

    type TOnDrawEx = proc(aContext :Com.IDrawContext)

## Параметры

**aContext** - контекст вызова события, объект класса **IDrawContext**.

## Назначение

Тип TOnDrawEx предназначен для задания процедуры-обработчика события,
возникающей перед отрисовкой ячейки.

Используется для задания события [OnDrawEx](topic:.Custom.ComClasses.Ctrl.IControlCell.OnDrawEx)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

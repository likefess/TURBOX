---
Link:.Consts.@TOnOutputEx
---

# Тип TOnOutputEx

## Описание

    type TOnOutputEx = func(aContext :Com.IOutputContext) :Variant;

## Параметры

**aContext** - контекст вызова события, объект класса **IOutputContext**.

## Назначение

Тип TOnOutputEx предназначен для задания функции-обработчика события,
возникающего при выводе (показе) значения ячейки.

Обработчик позволяет произвольным образом управлять тем, что отображается в ячейке.
Возвращаемое обработчиком значение не влияет собственно на значение ячейки - изменяется
лишь значение, предназначенное для вывода.

Используется для задания события [OnOutputEx](topic:.Custom.ComClasses.Ctrl.IControlCell.OnOutputEx)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).
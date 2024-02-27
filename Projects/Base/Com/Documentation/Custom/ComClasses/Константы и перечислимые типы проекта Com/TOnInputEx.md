# Тип TOnInputEx

## Описание

    type TOnInputEx = proc(aSender :Ctrl.IControl; aIndex :Integer);

## Параметры

**aSender** - контрол, из которого происходит вызов;

**aIndex** - номер строки, если контрол лежит в таблице.

## Назначение

Тип TOnInputEx предназначен для задания процедуры-обработчика события,
возникающего при вводе значения в поле ввода или изменении значения чек-бокса.

Значение этого типа используется в качестве аргумента функции [AddOnInputEx](topic:.Custom.ComClasses.Ctrl.IEdit.AddOnInputEx)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [AddOnInputEx](topic:.Custom.ComClasses.Ctrl.ICheckBox.AddOnInputEx)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).
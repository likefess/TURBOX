# Тип TOnVerifyEx

## Описание

    type TOnVerifyEx = proc(aSender :Ctrl.IControl; aIndex :Integer; aValue :Variant);

## Параметры

**aSender** - контрол, из которого происходит вызов;

**aIndex** - номер строки, если контрол лежит в таблице;

**aValue** - введенное значение.

## Назначение

Тип TOnVerifyEx предназначен для задания процедуры-обработчика события,
возникающего при подтверждении ввода значения в поле ввода или изменения значения чек-бокса.

Значение этого типа используется в качестве аргумента функции [AddOnVerifyEx](topic:.Custom.ComClasses.Ctrl.IEdit.AddOnVerifyEx)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [AddOnVerifyEx](topic:.Custom.ComClasses.Ctrl.ICheckBox.AddOnVerifyEx)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).
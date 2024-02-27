# Тип TOnVerifyOld

## Описание

    type TOnVerifyOld = proc(aValue :Variant);

## Параметры

**aValue** - введенное значение.

## Назначение

Тип TOnVerifyOld предназначен для задания процедуры-обработчика события,
возникающего при подтверждении ввода значения в поле ввода или изменения значения чек-бокса.

Значение этого типа используется в качестве аргумента функции [AddOnVerify](topic:.Custom.ComClasses.Ctrl.IEdit.AddOnVerify)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [AddOnVerify](topic:.Custom.ComClasses.Ctrl.ICheckBox.AddOnVerify)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).
# Тип TOnVerify

## Описание

    type TOnVerify = func(aSender :Ctrl.IControlCell;
                          aIndex :Integer; var aValue :Variant) :Logical;

## Параметры

**aSender** - контрол, для которого происходит вызов;

**aIndex** - номер строки, если контрол лежит в таблице;

**aValue** - введенное значение.

## Назначение

Тип TOnVerify предназначен для задания функции-обработчика события,
возникающего при подтверждении ввода значения в поле ввода или изменения значения чек-бокса.

Используется для задания события [OnVerify](topic:.Custom.ComClasses.Ctrl.IEdit.OnVerify)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [OnVerify](topic:.Custom.ComClasses.Ctrl.ICheckBox.OnVerify)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).
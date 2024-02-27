# Перечислимый тип AutocompleteModes

## Описание

    type AutocompleteModes = (
      acmFromRec = 0
     ,acmOn      = 1
     ,acmOff     = 2
    );

## Назначение

Используется для задания режима автозаполнения поля ввода.

Перечислимый тип AutocompleteModes включает следующие константы:

**acmFromRec** - заполнение из записи;

**acmOn** - автозаполнение включено;

**acmOff** - автозаполнение отключено.

Константы, определенные в данном типе, используются в свойстве
[AutocompleteMode](topic:.Custom.ComClasses.Ctrl.IEdit.AutocompleteMode)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default).

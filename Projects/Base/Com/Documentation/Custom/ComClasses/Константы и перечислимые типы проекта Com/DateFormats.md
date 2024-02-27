# Перечислимый тип DateFormats

## Описание

    type DateFormats = (
      DateOnly       = 0
     ,TimeOnly       = 1
     ,DateAndTime    = 2
    );

## Назначение

Используется для задания формата поля типа даты.

Перечислимый тип DateFormats включает следующие константы:

**DateOnly** - только дата;

**TimeOnly** - только время;

**DateAndTime** - дата и время.

Константы, определенные в данном типе, используются в свойстве
[FormatOfDate](topic:.Custom.ComClasses.Ctrl.IEdit.FormatOfDate)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default).

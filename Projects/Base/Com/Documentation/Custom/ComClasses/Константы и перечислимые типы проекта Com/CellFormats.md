# Перечислимый тип CellFormats

## Описание

    type CellFormats = (
      CommonFormat    = 0
     ,StringFormat    = 1
     ,NumericFormat   = 2
     ,DateFormat      = 3
     ,LogicalFormat   = 4
     ,EnumFormat      = 5
     ,ReferenceFormat = 6
    );

## Назначение

Используется для задания формата поля ввода.

Перечислимый тип CellFormats включает следующие константы:

**CommonFormat** - общий формат;

**StringFormat** - формат строки;

**NumericFormat** - числовой формат;

**DateFormat** - формат даты;

**LogicalFormat** - логический формат;

**EnumFormat** - перечислимый формат;

**ReferenceFormat** - ссылочный формат.

Константы, определенные в данном типе, используются в свойстве
[CellFormat](topic:.Custom.ComClasses.Ctrl.IEdit.CellFormat)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default).

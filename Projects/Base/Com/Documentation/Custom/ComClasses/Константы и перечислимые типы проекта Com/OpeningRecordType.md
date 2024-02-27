# Перечислимый тип OpeningRecordType

## Описание

    type OpeningRecordType = (
      ortNormal     = 0
     ,ortCreated    = 1
     ,ortDuplicated = 2
    );

## Назначение

Используется для определения типа открытия записи.

Перечислимый тип OpeningRecordType включает следующие константы:

**ortNormal** - редактируется существующий документ;

**ortCreated** - добавляется новый документ;

**ortDuplicated** - добавляется копия документа (документ клонируется).

Константы, определенные в данном типе, используются в функции-обработчике события
[OnOpenBlank](topic:.Custom.ComClasses.Ctrl.ICardFile.OnOpenBlank),
а также в функциях [DoOpenBlank](topic:.Custom.ComClasses.Ctrl.ICardFile.DoOpenBlank) и
[OnEdit](topic:.Custom.ComClasses.Ctrl.ICardFile.OnEdit)
класса [ICardFile](topic:.Custom.ComClasses.Ctrl.ICardFile.Default).
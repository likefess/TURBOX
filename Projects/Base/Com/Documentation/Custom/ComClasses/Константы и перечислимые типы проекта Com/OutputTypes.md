# Перечислимый тип OutputTypes

## Описание

    type OutputTypes = (
      Output      = 0
     ,Calculation = 1
     ,Copy        = 2
     ,Export      = 3
    );

## Назначение

Используется для обозначения причины, по которой система запрашивает значение поля ввода
для вывода.

Перечислимый тип OutputTypes включает следующие константы:

**Output** - вывод содержимого на экран или при печати;

**Calculation** - получение значения вычисляемого поля;

**Copy** - копирование в буфер обмена;

**Export** - вывод данных с помощью команды экспорта.

Константы, определенные в данном типе, используются в функции-обработчике типа
[TOnOutput](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnOutput),
а также в функции [DoOutput](topic:.Custom.ComClasses.Ctrl.IControlCell.DoOutput)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).
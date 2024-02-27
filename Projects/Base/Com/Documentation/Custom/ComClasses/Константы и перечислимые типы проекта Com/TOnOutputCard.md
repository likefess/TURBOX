# Тип TOnOutputCard

## Описание

    type TOnOutputCard = func(aSender :Ctrl.IControl;
                              aContext :Rec.IRecord; aValue :Variant;
                              aAction :OutputTypes; var aFormat :String) :Variant;

## Параметры

**aSender** - контрол, для которого происходит вызов;

**aContext** - ссылка на запись, связанную с выводимой строкой картотеки;

**aValue** - значение контрола;

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes));

**aFormat** - формат (внешнее представление) данных.

## Назначение

Тип TOnOutputCard предназначен для задания функции-обработчика события,
возникающего при выводе (показе) ячейки в строке картотеки.

Используется для задания события [OnOutputCard](topic:.Custom.ComClasses.Ctrl.IControlCell.OnOutputCard)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).
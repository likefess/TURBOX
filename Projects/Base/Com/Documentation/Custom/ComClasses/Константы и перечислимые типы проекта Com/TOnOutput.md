---
Link:.Consts.@TOnOutput
---

# Тип TOnOutput

## Описание

    type TOnOutput = func(aSender :Ctrl.IControl;
                          aIndex :Integer; aValue :Variant;
                          aAction :OutputTypes; var aFormat :String) :Variant;

## Параметры

**aSender** - контрол, для которого происходит вызов;

**aIndex** - номер строки, если контрол лежит в таблице;

**aValue** - значение контрола;

**aAction** - действие пользователя, которое потребовало получения текущего значения ячейки
([OutputTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OutputTypes));

**aFormat** - формат (внешнее представление) данных.

## Назначение

Тип TOnOutput предназначен для задания функции-обработчика события,
возникающего при выводе (показе) значения ячейки.

Обработчик позволяет произвольным образом управлять тем, что отображается в ячейке.
Возвращаемое обработчиком значение не влияет собственно на значение ячейки - изменяется
лишь значение, предназначенное для вывода.

Используется для задания события [OnOutput](topic:.Custom.ComClasses.Ctrl.IControlCell.OnOutput)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).
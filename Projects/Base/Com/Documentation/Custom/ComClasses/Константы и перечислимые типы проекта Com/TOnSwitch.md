# Тип TOnSwitch

## Описание

    type TOnSwitch = func(aSender :Ctrl.IFrame; aSubFrame :Ctrl.IFrame) :Logical;

## Параметры

**aSender** - фрейм, для которого происходит вызов.

**aSubFrame** - субфрейм, на который происходит переключение.

## Назначение

Тип TOnSwitch предназначен для задания функции-обработчика события,
возникающего при ручном переключении закладки фрейма.

Если событие возвращает False, то переключение не происходит.

Используется для задания события [OnSwitch](topic:.Custom.ComClasses.Ctrl.IFrame.OnSwitch)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default).
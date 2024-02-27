---
Link: .Ctrl.ICardFile.@DoOpenBlank
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция DoOpenBlank

## Описание

    func DoOpenBlank(aAction :OpeningRecordType; aRec :Record) :Logical;

## Параметры

**aAction** - тип открытия записи ([OpeningRecordType](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OpeningRecordType));

**aRec** - открываемая запись.

## Назначение

Открытие бланка-редактора с текущей записью.

Если функция возвращает TRUE, происходит стандартная обработка события, то есть открытие
бланка-редактора. Если функция возвращает FALSE, стандартная обработка не выполняется.
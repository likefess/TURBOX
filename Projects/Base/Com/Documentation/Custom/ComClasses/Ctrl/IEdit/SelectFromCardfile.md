---
Link: .Ctrl.IEdit.@SelectFromCardfile
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция SelectFromCardfile

## Описание

    func SelectFromCardfile(aIndex :Integer;
                            var aCurRec :Record; aFilter, aUseFilter :String) :Integer;

## Параметры

**aIndex** - номер строки, если контрол лежит в таблице;

**aCurRec** - запись, которая присвоена полю;

**aFilter** - фильтр, накладываемый на картотеку при обзоре;

**aUseFilter** - фильтр, накладываемый на картотеку при создании.

## Назначение

Создание и открытие картотеки с заданными фильтрами для выбора значения.
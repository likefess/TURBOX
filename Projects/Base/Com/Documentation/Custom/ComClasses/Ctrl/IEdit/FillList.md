---
Link: .Ctrl.IEdit.@FillList
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Процедура FillList

## Описание

    proc FillList(aList :String[]; aTranslate :Logical = true);

## Параметры

**aList** - массив элементов перечисления, из которого будут взяты значения;

**aTranslate** - если равен True, то элементы будут записаны с переводом через "|".

## Назначение

Заполнение массива элементов перечисления ([List](topic:.Custom.ComClasses.Ctrl.IEdit.List)).
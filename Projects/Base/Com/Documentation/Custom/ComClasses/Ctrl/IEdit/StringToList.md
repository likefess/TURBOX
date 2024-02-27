---
Link: .Ctrl.IEdit.@StringToList
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Процедура StringToList

## Описание

    proc StringToList (const aValue  :String);

## Параметры

**aValue** - значение в поле.

## Назначение

Преобразование строки aValue в массив и запись полученного массива
в [List](topic:.Custom.ComClasses.Ctrl.IEdit.List) при помощи процедуры
[FillList](topic:.Custom.ComClasses.Ctrl.IEdit.FillList).
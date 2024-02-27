---
Link: .Ctrl.IEdit.@AutoLookup
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле AutoLookup

## Описание

    AutoLookup :Logical;

## Назначение

При помощи данного свойства производится управление автоматическим обзором.

Если AutoLookup = True, то попытка ввести в поле ввода какой-либо текст будет
приводить к открытию картотеки для ссылочных полей ([CellFormat](CellFormat) = ReferenceFormat)
или к автоматической подстановке значения из списка для перечислимых полей ([CellFormat](CellFormat) = EnumFormat).

Если автообзор отключен, то в клетку можно ввести текст вручную.

Данное свойство имеет смысл только для ссылочных и перечислимых полей.


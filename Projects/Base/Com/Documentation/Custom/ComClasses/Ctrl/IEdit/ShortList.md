---
Link: .Ctrl.IEdit.@ShortList
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле ShortList

## Описание

    ShortList :Logical;

## Назначение

Если равно True, то выбор значения осуществляется при помощи выпадающего списка.

Для ссылочных полей ([CellFormat](CellFormat) = ReferenceFormat) список возможных значений
формируется из картотеки.

Для строковых полей ([CellFormat](CellFormat) = StringFormat) - заполнением поля [List](List).

При этом также становится возможен произвольный ввод значений (в том числе через [Autocomplete](Autocomplete)).
То есть поле будет себя вести аналогично перечислимому полю с возможностью свободного ввода значений.

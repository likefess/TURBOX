---
Link: .Ctrl.IEdit.@LookupOrder
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле LookupOrder

## Описание

    LookupOrder :String;

## Назначение

Свойство позволяет узнать и изменить фильтр для ограничения подмножества записей, из которых
можно выбирать запись для ввода в данное поле. Если поле связано с картотекой
(), то этот же
фильтр накладывается и на записи картотеки перед её открытием.

Данное свойство имеет смысл только для ссылочных полей ([CellFormat](topic:.Custom.ComClasses.Ctrl.IEdit.CellFormat) = ReferenceFormat).



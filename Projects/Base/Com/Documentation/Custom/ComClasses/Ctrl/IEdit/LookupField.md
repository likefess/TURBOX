---
Link: .Ctrl.IEdit.@LookupField
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле LookupField

## Описание

    LookupField :String;

## Назначение

Свойство позволяет узнать и изменить имя поля для обзора, то есть имя поля из класса записи,
для ввода экземпляров которого предназначено связанное поле [Field](topic:.Custom.ComClasses.Ctrl.IEdit.Field).

Данное свойство имеет смысл только для ссылочных полей ([CellFormat](topic:.Custom.ComClasses.Ctrl.IEdit.CellFormat) = ReferenceFormat).
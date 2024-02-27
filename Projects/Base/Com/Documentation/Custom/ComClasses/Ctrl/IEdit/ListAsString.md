---
Link: .Ctrl.IEdit.@ListAsString
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле ListAsString

## Описание

    ListAsString :String;

## Назначение

Элементы перечисления в формате [A,B,C] или A;B;C.
Каждый элемент может быть ассоциативной парой: Описание|Значение.

Параметр можно использовать только в визуальном редакторе.

Поле должно иметь [CellFormat](topic:.Custom.ComClasses.Ctrl.IEdit.CellFormat) = EnumFormat
и [AutoLookup](topic:.Custom.ComClasses.Ctrl.IEdit.AutoLookup) = True.


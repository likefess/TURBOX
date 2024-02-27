---
Link: .Ctrl.IControlCell.@CanSelect
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](Default)

# Поле CanSelect

## Описание

    CanSelect :Logical;

## Назначение

Возможность выделения ячейки.
Если равно True, то на ячейке может быть установлен курсор
(т.е. она может быть выделена), а также доступны команды контекстного меню.

**Внимание**. Если в ячейке свойство
[TabStop](topic:.Custom.ComClasses.Ctrl.IControlCell.TabStop)
равно True, то эта ячейка может быть выделена независимо от значения свойства CanSelect.

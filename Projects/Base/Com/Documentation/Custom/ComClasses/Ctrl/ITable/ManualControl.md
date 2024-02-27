---
Link: .Ctrl.ITable.@ManualControl
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Поле ManualControl

## Описание

    ManualControl :Logical;

## Назначение

Управление соответствующим свойством периодической секции, а именно,
если ManualControl = False, то запрещено вручную добавлять, удалять и перемещать строки,
а при отсутствии строк "сервисная строка" (строка без данных для начала редактирования
подтаблицы) скрыта.

По умолчанию, ManualControl = True.
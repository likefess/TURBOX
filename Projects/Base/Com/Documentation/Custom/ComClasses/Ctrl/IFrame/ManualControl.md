---
Link: .Ctrl.IFrame.@ManualControl
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Поле ManualControl

## Описание

    ManualControl :Logical;

## Назначение

Свойство управляет соответствующим свойством периодической секции, а именно,
если ManualControl = False, то запрещено вручную добавлять, удалять и перемещать строчки,
а при отсутствии строчек "сервисная строка" (строка без данных для начала редактирования
подтаблицы) скрыта.

По умолчанию, ManualControl = True.

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).

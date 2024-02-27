---
Link: .Ctrl.ITable.@ChangePosition
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура ChangePosition

## Описание

    proc ChangePosition(aIndex :Integer; aMoveUp :Logical);

## Параметры

**aIndex** - номер строки.

**aMoveUp** - если True, строка перемещается вверх, если False - вниз.

## Назначение

Эмуляции перемещения строки таблицы пользователем.

Нельзя вызывать из пользовательского обработчика OnChangePosition. Используйте для этого методы
[PosUp](topic:.Custom.ComClasses.Ctrl.ITable.PosUp)
и [PosDown](topic:.Custom.ComClasses.Ctrl.ITable.PosDown).
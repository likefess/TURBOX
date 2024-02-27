---
Link: .Ctrl.ITable.@DoChangePosition
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура DoChangePosition

## Описание

    proc DoChangePosition(aIndex :Integer; aMoveUp :Logical);

## Параметры

**aIndex** - номер строки.

**aMoveUp** - если True, строка перемещается вверх, если False - вниз.

## Назначение

Действие при перемещении строки таблицы.

## <span style="color:red">Внимание</span>

Будет удален в 10.6. Используйте метод [ChangePosition](topic:.Custom.ComClasses.Ctrl.ITable.ChangePosition).

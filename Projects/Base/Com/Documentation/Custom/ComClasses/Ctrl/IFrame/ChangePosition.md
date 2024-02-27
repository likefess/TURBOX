---
Link: .Ctrl.IFrame.@ChangePosition
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура ChangePosition

## Описание

    proc ChangePosition(aIndex :Integer; aMoveUp :Logical);

## Параметры

**aIndex** - номер строки;

**aMoveUp** - если True, строка перемещается вверх, если False - вниз.

## Назначение

Эмуляции перемещения строки таблицы пользователем.

Нельзя вызывать из пользовательского обработчика OnChangePosition. Используйте для этого методы
[PosUp](topic:.Custom.ComClasses.Ctrl.IFrame.PosUp)
и [PosDown](topic:.Custom.ComClasses.Ctrl.IFrame.PosDown).

## <span style="color:red">Внимание</span>

Метод устарел.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
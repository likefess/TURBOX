---
Link: .Ctrl.ITable.@PosUp
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура PosUp

## Описание

    proc PosUp(aIndex :Integer; {aSetPos :Logical});

## Параметры

**aIndex** - номер строки.

**aSetPos** - флаг установки фокуса, по умолчанию True.

## Назначение

Перемещение строки таблицы вверх.

Используется для вызова из пользовательского обработчика
[OnChangePosition](topic:.Custom.ComClasses.Ctrl.ITable.OnChangePosition).

## Примечание

Если планируется несколько подряд вставок/перемещений, то нужно
передать параметр aSetPos = False для всех вставок/перемещений, кроме последнего.
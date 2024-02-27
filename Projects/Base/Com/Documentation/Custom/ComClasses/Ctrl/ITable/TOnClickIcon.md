---
Link: .Ctrl.ITable.@TOnClickIcon
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Тип TOnClickIcon

## Описание

    type TOnClickIcon = proc(aSender :Ctrl.ITable; aIndex :Integer; aAction :ClickTypes);

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex** - номер строки, в которой лежит иконка.

**Action** - одна из предопределенных констант, описанных в типе [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes),
которая определяет действие пользователя.

## Назначение

Тип TOnClickIcon предназначен для задания процедуры-обработчика события,
возникающего при нажатии на иконку в строке таблицы.

Используется для задания события
[OnClickIcon](topic:.Custom.ComClasses.Ctrl.ITable.OnClickIcon).

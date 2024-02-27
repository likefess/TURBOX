---
Link: .Ctrl.ITable.@TOnDrawIcon
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Тип TOnDrawIcon

## Описание

    type TOnDrawIcon = proc(aSender :Ctrl.ITable; aIndex :Integer; var aIconName :String);

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex** - номер строки, в которой лежит иконка.

**aIconName** - имя изображения.

## Назначение

Тип TOnDrawIcon предназначен для задания процедуры-обработчика события,
возникающего при отрисовке иконки в строке таблицы. Позволяет изменить изображении в иконке.

Используется для задания события
[OnDrawIcon](topic:.Custom.ComClasses.Ctrl.ITable.OnDrawIcon).

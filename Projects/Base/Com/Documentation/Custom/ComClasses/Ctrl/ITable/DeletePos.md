---
Link: .Ctrl.ITable.@DeletePos
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура DeletePos

## Описание

    DeletePos(aIndex :Integer; {aSetPos :Logical});

## Параметры

**aIndex** - номер строки.

**aSetPos** - перенос фокуса, по умолчанию True.

## Назначение

Удаление строки таблицы.

Если к секции привязана подтаблица, то удаляется кадр в подтаблице.
Если к секции привязаны массивы, то удаляется значения из массивов.

Используется для вызова из пользовательского обработчика
[OnDelete](topic:.Custom.ComClasses.Ctrl.ITable.OnDelete).

## Примечание

Если планируется несколько подряд вставок/перемещений, то нужно
передать параметр aSetPos = False для всех вставок/перемещений, кроме последнего.
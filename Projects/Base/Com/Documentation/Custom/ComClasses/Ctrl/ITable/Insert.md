---
Link: .Ctrl.ITable.@Insert
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура Insert

## Описание

    proc Insert(aIndex :Integer);

## Параметры

**aIndex** - номер строки.

## Назначение

Эмуляции добавления строки в таблицу пользователем.

Нельзя вызывать из пользовательского обработчика OnInsert. Используйте для этого метод
[InsertPos](topic:.Custom.ComClasses.Ctrl.ITable.InsertPos).
---
Link: .Ctrl.IEdit.@SetRecordParams
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие SetRecordParams

## Описание

    SetRecordParams :proc(aSender :Ctrl.IEdit; aIndex :Integer);

## Параметры

**aSender** - поле ввода, для которого происходит вызов;

**aIndex** -  номер строки, если контрол лежит в таблице.

## Назначение

Это событие происходит при необходимости установки/изменения параметров поля ввода.
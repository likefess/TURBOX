---
Link: .Ctrl.IEdit.@OnChange
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие OnChange

## Описание

    OnChange :proc(aSender :Ctrl.IEdit; aIndex :Integer);

## Параметры

**aSender** - поле ввода, для которого происходит вызов;

**aIndex** -  номер строки, если контрол лежит в таблице.

## Назначение

Данное событие происходит при изменении значения поля ввода.
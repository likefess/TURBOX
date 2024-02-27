---
Link: .Ctrl.IEdit.@OnOpenCardForm
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие OnOpenCardForm

## Описание

    OnOpenCardForm :proc(aSender :Ctrl.IEdit; aIndex :Integer; aCardForm :Frm.ICardForm);

## Параметры

**aSender** - поле ввода, для которого происходит вызов;

**aIndex** -  номер строки, если контрол лежит в таблице;

**aCardForm** -  открываемая картотека.

## Назначение

Данное событие происходит при открытии картотеки для выбора значения.
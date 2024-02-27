---
Link: .Ctrl.IRadioButton.@OnChange
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IRadioButton](Default)

# Событие OnChange

## Описание

    OnChange :proc(Sender :Ctrl.IRadioButton; aIndex :Integer);

## Параметры

**aSender** - переключатель, для которого происходит вызов;

**aIndex** -  номер строки, если контрол лежит в таблице.

## Назначение

Обработчик события, которое происходит при изменении значения переключателя.
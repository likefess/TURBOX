---
Link: .Ctrl.IEdit.@OnAutocomplete
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие OnAutocomplete

## Описание

    OnAutocomplete :func(aSender :Ctrl.IEdit; aIndex :Integer;
                         aMask :String; aLimit :Integer) :List;

## Параметры

**aSender** - поле ввода, для которого происходит вызов;

**aIndex** -  номер строки, если контрол лежит в таблице;

**aMask** - маска, по которой подбирается значение;

**aLimit** - предельно допустимое количество записей в выпадающем списке для автозаполнения.

## Назначение

Данное событие происходит при автозаполнении поля ввода.
---
Link: .Ctrl.IQuillJS.@SetSelection
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IQuillJS](Default)

# Процедура SetSelection

## Описание

    proc SetSelection(aIndex :Integer; {aLength :Integer});

## Параметры

**aIndex** - индекс начала выделения.

**aLength** - длина выделения. По умолчанию равна 0.

## Назначение

Программная установка выделения.

Если **aLength** = 0, происходит только перенос курсора на позицию **aIndex**.
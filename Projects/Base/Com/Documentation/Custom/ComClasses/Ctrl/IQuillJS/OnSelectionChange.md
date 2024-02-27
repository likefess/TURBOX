---
Link: .Ctrl.IQuillJS.@OnSelectionChange
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IQuillJS](Default)

# Событие OnSelectionChange

## Описание

    OnSelectionChange :proc (aIndex :Integer; aLength :Integer);

## Параметры

**aIndex** - индекс начала выделенного текста.

**aLength** - длина выделенного текста. Данный параметр равен нулю, если происходит отмена выделения текста
или перенос курсора на позицию **aIndex**.

## Назначение

Обработчик события, которое происходит при изменении выделения текста.


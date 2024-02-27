---
Link: .Ctrl.ICardFile.@SetQueryActive
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Процедура SetQueryActive

## Описание

    proc SetQueryActive(aOn :Boolean);

## Параметры

**aOn** - определяет действие над запросом.

## Назначение

Изменение состояния запроса. Если **aOn** равно True, то вызывается процедура Select,
если False - Close.
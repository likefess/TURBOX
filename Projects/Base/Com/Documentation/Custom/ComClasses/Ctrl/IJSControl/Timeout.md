---
Link: .Ctrl.IJSControl.@Timeout
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](Default)

# Поле Timeout

## Описание

    Timeout :Integer;

## Назначение

Время ожидания js-скрипта. Измеряется в секундах.

Во время запуска скрипта пользовательский интерфейс блокируется, и разблокируется либо
по завершении скрипта, либо по истечении времени ожидания.

На текущий момент поддержано только на нативном клиенте

Поле доступно только на чтение.
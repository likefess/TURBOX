---
Link: .Ctrl.IJSControl.@ExecuteScriptAsync
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](Default)

# Процедура ExecuteScriptAsync

## Описание

    proc ExecuteScriptAsync (aScript :String; aOnResult :TOnExecuteScriptAsyncResult);

## Параметры

**aScript** - запускаемый скрипт.

**aOnResult** - обработчик события, которое происходит при завершении выполнения скрипта;
имеет тип [TOnExecuteScriptAsyncResult](TOnExecuteScriptAsyncResult).

## Назначение

Асинхронное выполнение js-скрипта в контексте веб-компонента и обработка результата выполнения.
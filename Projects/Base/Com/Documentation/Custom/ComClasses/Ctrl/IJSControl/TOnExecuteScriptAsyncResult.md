---
Link: .Ctrl.IJSControl.@TOnExecuteScriptAsyncResult
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](Default)

# Тип TOnExecuteScriptAsyncResult

## Описание

    type TOnExecuteScriptAsyncResult = proc (aResult :Variant);

## Параметры

**aResult** - результат выполнения скрипта; имеет тип Storage, если из JS возвращается объект,
иначе - String.

## Назначение

Предназначен для задания обработчика события, которое возникает при завершении
выполнения JS-скрипта, запущенного асинхронно.

Используется при вызове метода [ExecuteScriptAsync](ExecuteScriptAsync).

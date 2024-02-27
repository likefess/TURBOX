---
Link: .Ctrl.IQuillJS.@GetTextAsync
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IQuillJS](Default)

# Процедура GetTextAsync

## Описание

    proc GetTextAsync(aIndex :Integer; aLength :Integer; aOnResult :TOnGetTextAsyncResult);

## Параметры

**aIndex** - индекс начала фрагмента.

**aLength** - длина фрагмента.

**aOnResult** - обработчик события, происходящего при завершении процедуры.
Тип -- [TOnGetTextAsyncResult](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnGetTextAsyncResult).

## Назначение

Получение фрагмента текста из редактора в асинхронном режиме.

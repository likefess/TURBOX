---
Link:.Consts.@TOnGetTextAsyncResult
---

# Тип TOnGetTextAsyncResult

## Описание

    type TOnGetTextAsyncResult = proc (aResult :String);

## Параметры

**aResult** - полученный текст.

## Назначение

Тип TOnOutput предназначен для задания обработчика события,
происходящего при завершении процедуры получения текста из [редактора](topic:.Custom.ComClasses.Ctrl.IQuillJS.Default).

Используется для задания аргументов процедур [GetTextAsync](topic:.Custom.ComClasses.Ctrl.IQuillJS.GetTextAsync),
[GetAllText](topic:.Custom.ComClasses.Ctrl.IQuillJS.GetAllText)
и [GetContentsAsync](topic:.Custom.ComClasses.Ctrl.IQuillJS.GetContentsAsync).

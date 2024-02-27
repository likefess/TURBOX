---
Link:.Consts.@TOnInitQuill
---

# Тип TOnInitQuill

## Описание

    type TOnInitQuill = proc (aQuill :Com.Ctrl.IQuillJS);

## Параметры

**aQuill** - [редактор](topic:.Custom.ComClasses.Ctrl.IQuillJS.Default), для которого происходит вызов.

## Назначение

Тип TOnOutput предназначен для задания обработчика события,
которое происходит, когда редактор инициализирован и готов к использованию.

Используется для задания события [IQuillJS.OnInitQuill](topic:.Custom.ComClasses.Ctrl.IQuillJS.OnInitQuill).
# Тип TOnInsert

## Описание

    type TOnInsert = func(aSender :ITable; aIndex :Integer) :Logical;

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex** - позиция, на которую происходит вставка.

## Назначение

Тип TOnInsert предназначен для задания функции-обработчика события,
возникающего при вставке новой строки в табличный фрейм или таблицу.

Если функция возвращает True, то продолжается стандартное действие - добавление позиции.

Используется для задания события [OnInsert](topic:.Custom.ComClasses.Ctrl.IFrame.OnInsert)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default), а также для события
[OnInsert класса ITable](topic:.Custom.ComClasses.Ctrl.ITable.OnInsert).
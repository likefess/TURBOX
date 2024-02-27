# Тип TOnDelete

## Описание

    type TOnDelete = func(aSender :ITable; aIndex :Integer) :Logical;

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex** - позиция удаляемого элемента.

## Назначение

Тип TOnDelete предназначен для задания функции-обработчика события,
возникающего при удалении строки табличного фрейма или таблицы.

Если функция возвращает True, то продолжается стандартное действие - удаление позиции.

Используется для задания события [OnDelete](topic:.Custom.ComClasses.Ctrl.IFrame.OnDelete)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default), а также для события
[OnDelete класса ITable](topic:.Custom.ComClasses.Ctrl.ITable.OnDelete).
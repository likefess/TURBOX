# Тип TOnChangePosition

## Описание

    type TOnChangePosition = func(aSender :ITable; aIndex :Integer; aMoveUp :Logical) :Logical;

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex** - позиция перемещаемого элемента.

**aMoveUp** - если равно True, перемещение происходит вверх, иначе - вниз.

## Назначение

Тип TOnChangePosition предназначен для задания функции-обработчика события,
возникающего при перемещении строки табличного фрейма или таблицы.

Если функция возвращает True, то продолжается стандартное действие - смена позиции.

Используется для задания события [OnChangePosition](topic:.Custom.ComClasses.Ctrl.IFrame.OnChangePosition)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default), а также для события
[OnChangePosition класса ITable](topic:.Custom.ComClasses.Ctrl.ITable.OnChangePosition).
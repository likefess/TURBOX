---
Link: .Consts.@TOnChangeCollapsed
---

# Тип TOnChangeCollapsed

## Описание

    type TOnChangeCollapsed = proc(aSender :Ctrl.IBox; aSource :CollapseSources);

## Параметры

**aSender** - бокс, для которого происходит вызов.

**aSource** - источник изменения состояния бокса, константа типа
[CollapseSources](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CollapseSources).

## Назначение

Тип TOnChangeCollapsed предназначен для задания процедуры-обработчика события,
возникающего после изменения состояния бокса (сворачивания/разворачивания).

Используется для задания события
[OnVerifyCollapsed](topic:.Custom.ComClasses.Ctrl.IBox.OnVerifyCollapsed)
класса [IBox](topic:.Custom.ComClasses.Ctrl.IBox.Default).
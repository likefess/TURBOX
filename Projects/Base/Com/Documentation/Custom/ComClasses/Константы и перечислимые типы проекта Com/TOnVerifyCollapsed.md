---
Link: .Consts.@TOnVerifyCollapsed
---

# Тип TOnVerifyCollapsed

## Описание

    type TOnVerifyCollapsed = func(aSender :Ctrl.IBox; var aValue :Boolean;
                                   aSource :CollapseSources) :Logical;

## Параметры

**aSender** - бокс, для которого происходит вызов.

**aValue** - новое состояние бокса: True, если бокс разворачивается, False - если сворачивается.

**aSource** - источник изменения состояния бокса, константа типа
[CollapseSources](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CollapseSources).

## Назначение

Тип TOnVerifyCollapsed предназначен для задания функции-обработчика события,
возникающего при подтверждении изменения состояния бокса (сворачивании/разворачивании).

Если обработчик возвращает True, то происходит изменение состояние бокса,
в противном случае состояние остается без изменений.

Используется для задания события
[OnVerifyCollapsed](topic:.Custom.ComClasses.Ctrl.IBox.OnVerifyCollapsed)
класса [IBox](topic:.Custom.ComClasses.Ctrl.IBox.Default).
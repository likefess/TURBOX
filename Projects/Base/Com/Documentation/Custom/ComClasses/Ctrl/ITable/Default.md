---
Title: Компонент ITable
Link: .Ctrl.ITable
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default)

# Ctrl.ITable

Класс *Ctrl.ITable* предназначен для работы с таблицами.

Визуальный компонент *Ctrl.ITable* реализует возможности периодической секции шаблона.
Столбцами таблицы являются вложенные субкомпоненты. В качестве таких субкомпонент можно
использовать контролы, производные от [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default), а также
[Ctrl.IColumnsGroup](topic:.Custom.ComClasses.Ctrl.IColumnsGroup.Default).

*Ctrl.ITable* можно использовать на терминальных фреймах, в частности совместно с другими
контролами. Таким образом в рамках одного фрейма можно например разместить две таблицы с общей
горизонтальной полосой прокрутки или таблицу с "привязанными к ней" итогами.

Наследует все свойства и методы родительского класса Ctrl.IControlsLayout.

Непосредственно в классе *Ctrl.ITable* определены следующие свойства класса:
* [Тип TOnDrawIcon](TOnDrawIcon)
* [Тип TOnClickIcon](TOnClickIcon)

и свойства объекта:
* [Поле Adaptive](Adaptive)
* [Поле ShowIcon](ShowIcon)
* [Поле IconName](IconName)
* [Поле Numbering](Numbering)
* [Поле PopupMenu](PopupMenu)
* [Поле Subtable](Subtable)
* [Поле RowCommands](RowCommands)
* [Поле CurrentRow](CurrentRow)
* [Поле CurrentControl](CurrentControl)
* [Поле TableRowsCount](TableRowsCount)
* [Поле Freezed](Freezed)
* [Поле Sortable](Sortable)
* [Поле SortOrder](SortOrder)
* [Поле MinHeight](MinHeight)
* [Поле ManualControl](ManualControl)
* [Поле CanInsert](CanInsert)
* [Поле CanDelete](CanDelete)
* [Поле CanMove](CanMove)
* [Событие OnInsert](OnInsert)
* [Событие OnDelete](OnDelete)
* [Событие OnChangePosition](OnChangePosition)
* [Событие OnDrawIcon](OnDrawIcon)
* [Событие OnClickIcon](OnClickIcon)
* [Поле ButtonRowInsert](ButtonRowInsert)
* [Поле ButtonRowDelete](ButtonRowDelete)
* [Поле ButtonRowUp](ButtonRowUp)
* [Поле ButtonRowDown](ButtonRowDown)
* [Поле ExportAlways](ExportAlways)
* [Функция ColumnsCount](ColumnsCount)
* [Процедура DoDelete](DoDelete)
* [Процедура DoInsert](DoInsert)
* [Процедура DoChangePosition](DoChangePosition)
* [Процедура Delete](Delete)
* [Процедура Insert](Insert)
* [Процедура ChangePosition](ChangePosition)
* [Функция SortDir](SortDir)
* [Процедура SortByColumn](SortByColumn)
* [Процедура SortBy](SortBy)
* [Функция CompareByColumns](CompareByColumns)
* [Функция CompareByFields](CompareByFields)
* [Процедура DeletePos](DeletePos)
* [Процедура InsertPos](InsertPos)
* [Процедура PosUp](PosUp)
* [Процедура PosDown](PosDown)
* [Процедура Resize](Resize)
* [Процедура RowInsert](RowInsert)
* [Процедура RowDelete](RowDelete)
* [Процедура RowUp](RowUp)
* [Процедура RowDown](RowDown)

## Примеры использования

Для отображения двух таблиц и строки с итогами в рамках одного фрейма нужно сделать
следующую настройку:

* FramePosition :[IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default)
    * Table1 :[ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default)
        * Res1 :[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
        * Qty1 :[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
    * Table2 :[ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default) [HasCaption = False] *отключаем заголовок во второй таблице*
        * Res2 :[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
        * Qty3 :[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
    * Total :[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
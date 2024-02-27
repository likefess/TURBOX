---
Title: Компонент ICardBase
Link: .Ctrl.ICardBase
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default)

# Ctrl.ICardBase

Класс *Ctrl.ICardBase* используется в качестве базового для классов картотек:
[Ctrl.ICardFile](topic:.Custom.ComClasses.Ctrl.ICardFile.Default)
и [Ctrl.ISubCardFile](topic:.Custom.ComClasses.Ctrl.ISubCardFile.Default).

Картотеки предназначены для визуального отображения одного или нескольких классов записей.

Наследует все свойства и методы родительского класса Ctrl.IControl.

Непосредственно в классе *Ctrl.ICardBase* определены следующие свойства класса:
* [Поле gtNone](gtNone)
* [Константа gtNext](gtNext)
* [Константа gtPrevious](gtPrevious)
* [Константа gtFirst](gtFirst)
* [Константа gtLast](gtLast)
* [Константа gtCurrent](gtCurrent)

и свойства объекта:
* [Поле ShowCount](ShowCount)
* [Поле ShowWebSelectColumn](ShowWebSelectColumn)
* [Поле RowCommands](RowCommands)
* [Поле ShowTotal](ShowTotal)
* [Поле CanInsert](CanInsert)
* [Поле CanDelete](CanDelete)
* [Поле CanMove](CanMove)
* [Поле CanEdit](CanEdit)
* [Поле CurrentControl](CurrentControl)
* [Поле SelectedCount](SelectedCount)
* [Поле Selected](Selected)
* [Поле SelectOnDblClick](SelectOnDblClick)
* [Поле GoTo](GoTo)
* [Поле PopupMenu](PopupMenu)
* [Поле ExportAlways](ExportAlways)
* [Функция ColumnsCount](ColumnsCount)
* [Процедура RestoreLayout](RestoreLayout)
* [Процедура FirstItem](FirstItem)
* [Процедура LastItem](LastItem)
* [Процедура PageUp](PageUp)
* [Процедура PageDown](PageDown)
* [Процедура EditItem](EditItem)
* [Процедура AddCommand](AddCommand)
* [Процедура AddCommandEx](AddCommandEx)
* [Процедура Resize](Resize)
<!--* [Функция GetColumnContainers](GetColumnContainers) web -->
<!--* [Функция webHeaderCtxMenuData](webHeaderCtxMenuData) web -->

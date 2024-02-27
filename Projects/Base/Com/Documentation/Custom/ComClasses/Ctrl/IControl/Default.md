---
Title: Компонент IControl
Link: Com.Ctrl.IControl
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default)

# Ctrl.IControl

Класс *Ctrl.IControl* используется в качестве базового элемента управления (контрола).

**Внимание!** Создать объект класса IControl напрямую нельзя.
Для работы с элементами управления используются классы-наследники.

Наследует все свойства и методы родительского класса IContainer.

Непосредственно в классе *Ctrl.IControl* определены следующие свойства объекта:

* [Поле Printed](Printed)
* [Поле Caption](Caption)
* [Поле HasCaption](HasCaption)
* [Поле Hint](Hint)
* [Поле Width](Width)
* [Поле FixSize](FixSize)
* [Поле Alignment](Alignment)
* [Поле VertAlignment](VertAlignment)
* [Поле Fashion](Fashion)
* [Поле Color](Color)
* [Поле FontColor](FontColor)
* [Поле FontName](FontName)
* [Поле FontSize](FontSize)
* [Поле FontBold](FontBold)
* [Поле FontItalic](FontItalic)
* [Поле Rendering](Rendering)
* [Поле ParentFrame](ParentFrame)
* [Поле ParentType](ParentType)
* [Поле IsTable](IsTable)
* [Поле ParentTable](ParentTable)
* [Поле HasValue](HasValue)
<!--* [Поле JsonExportMode](JsonExportMode) web -->
* [Функция GetValue](GetValue)
* [Функция CopyValue](CopyValue)
* [Функция CutValue](CutValue)
* [Функция PasteValue](PasteValue)
* [Процедура DeleteValue](DeleteValue)
* [Функция GetAlignment](GetAlignment)
* [Функция GetInheritedPopupMenu](GetInheritedPopupMenu)
<!--* [Функция JsonStyleStore](JsonStyleStore) web -->
<!--* [Функция jsonValue](jsonValue) web -->
<!--* [Процедура FromJson](FromJson) web -->
* [Процедура SetFocus](SetFocus)
* [Функция RowsCount](RowsCount)
* [Функция GetInheritedColor](GetInheritedColor)
* [Функция SortField](SortField)
* [Процедура AddOnRedraw](AddOnRedraw)
* [Процедура DoRedraw](DoRedraw)
* [Процедура Preload](Preload)
* [Функция DefaultMenu](DefaultMenu)
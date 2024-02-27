---
Title: Компонент IControlCell
Link: .Ctrl.IControlCell
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default)

# Ctrl.IControlCell

Класс *Ctrl.IControlCell* используется в качестве базового элемента управления (контрола)
на основе ячеек.

**Внимание!** Создать объект класса IControlCell напрямую нельзя.
Для работы с элементами управления используются классы-наследники IControlCell:
[IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default),
[ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default),
[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default),
[IRadioButton](topic:.Custom.ComClasses.Ctrl.IRadioButton.Default) и
[IStatic](topic:.Custom.ComClasses.Ctrl.IStatic.Default).

Наследует все свойства и методы родительского класса Ctrl.IControl.

Непосредственно в классе *Ctrl.IControlCell* определены следующие свойства объекта:

* [Поле Wrap](Wrap)
* [Поле Multiline](Multiline)
* [Поле CanSelect](CanSelect)
* [Поле TabStop](TabStop)
* [Поле MinWidth](MinWidth)
* [Поле MaxWidth](MaxWidth)
* [Поле CanSort](CanSort)
* [Событие OnOutput](OnOutput)
* [Событие OnOutputCard](OnOutputCard)
* [Событие OnOutputEx](OnOutputEx)
* [Событие OnClick](OnClick)
* [Событие OnDraw](OnDraw)
* [Событие OnColumnClick](OnColumnClick)
* [Событие OnColumnDraw](OnColumnDraw)
* [Событие OnDrawEx](OnDrawEx)
* [Событие OnHint](OnHint)
* [Поле FieldColor](FieldColor)
* [Поле ImageName](ImageName)
* [Поле ImageSize](ImageSize)
* [Поле DefaultVisible](DefaultVisible)
* [Поле DefaultWidth](DefaultWidth)
* [Функция DoClick](DoClick)
* [Функция DoCaptionClick](DoCaptionClick)
* [Функция DoOutput](DoOutput)
<!--* [Процедура jsonToStorage](jsonToStorage) web -->
* [Функция GetEditField](GetEditField)
* [Функция GetTable](GetTable)

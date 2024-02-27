---
Link: Com.Ctrl.IControlsLayout.@AddListEdit
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddListEdit

## Описание

    func AddListEdit({aLabel :String}; {aLabWidth :Numeric}; aField :Fld.IValue;
                     {aWidth :Numeric}; {aFormat :CellFormats}; {aLookupField :String};
                     {aCardFileClass :Frm.ICardForm}; {aHint :String}) :Ctrl.IListEdit;

## Параметры

**aLabel** - надпись у поля ввода.

**aLabWidth** - ширина надписи.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aWidth** - ширина поля ввода.

**aFormat** - формат значения, константа типа [CellFormats](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CellFormats).

**aLookupField** - если **aField** - документ, то название просматриваемого поля документа.

**aCardFileClass** - связанная картотека, объект класса [Frm.ICardForm](topic:.Custom.ComClasses.Frm.ICardForm.Default).

**aHint** - текст подсказки.

## Назначение

Добавление [поля ввода с выпадающим списком](topic:.Custom.ComClasses.Ctrl.IListEdit.Default).

Возвращает ссылку на добавленный элемент.
---
Link: Com.Ctrl.IControlsLayout.@AddEdit
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddEdit

## Описание

    func AddEdit({aLabel :String}; {aLabWidth :Numeric}; aField :Fld.IValue; {aWidth :Numeric};
                 {aFormat :CellFormats}; {aLookupField :String}; {aCardFileClass :Frm.ICardForm};
                 {aJump :Logical}; {aJumpFormClass :Frm.IForm}; {aHint :String}) :Ctrl.IEdit;

## Параметры

**aLabel** - надпись у поля ввода.

**aLabWidth** - ширина надписи.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aWidth** - ширина поля ввода.

**aFormat** - формат значения, константа типа [CellFormats](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CellFormats).

**aLookupField** - если **aField** - документ, то название просматриваемого поля документа.

**aCardFileClass** - связанная картотека, объект класса [Frm.ICardForm](topic:.Custom.ComClasses.Frm.ICardForm.Default).

**aJump** - если равно True, присутствует кнопка перескока.

**aJumpFormClass** - класс формы, на которую ведет кнопка перескока, объект класса [IForm](topic:.Custom.ComClasses.Frm.IForm.Default).

**aHint** - текст подсказки.

## Назначение

Добавление [поля ввода](topic:.Custom.ComClasses.Ctrl.IEdit.Default) с заданными параметрами.

Возвращает ссылку на добавленный элемент.
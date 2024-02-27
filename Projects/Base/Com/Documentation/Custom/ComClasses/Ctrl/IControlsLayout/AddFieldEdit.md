---
Link: Com.Ctrl.IControlsLayout.@AddFieldEdit
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddFieldEdit

## Описание

    func AddFieldEdit({aLabel :String}; aField :Fld.IValue; {aWidth :Numeric}; {aLookupField :String};
                      {aCardFileClass :Frm.ICardForm}; {aJump :Logical}; {aJumpFormClass :Frm.IForm}) :Ctrl.IEdit;

## Параметры

**aLabel** - надпись у поля ввода.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aWidth** - ширина поля ввода.

**aLookupField** - если **aField** - документ, то название просматриваемого поля документа.

**aCardFileClass** - связанная картотека, объект класса [Frm.ICardForm](topic:.Custom.ComClasses.Frm.ICardForm.Default).

**aJump** - если равно True, присутствует кнопка перескока.

**aJumpFormClass** - класс формы, на которую ведет кнопка перескока, объект класса [IForm](topic:.Custom.ComClasses.Frm.IForm.Default).

## Назначение

Добавление [поля ввода](topic:.Custom.ComClasses.Ctrl.IEdit.Default) со связанным полем.

Возвращает ссылку на добавленный элемент.
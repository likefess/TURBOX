---
Link: Com.Ctrl.IControlsLayout.@AddFieldCol
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddFieldCol

## Описание

    func AddFieldCol({aLabel :String}; {aWidth :Numeric}; aField :Fld.IValue; {aLookupField :String};
                     {aCardFileClass :Frm.ICardForm}; {aJump :Logical}; {aJumpFormClass :Frm.IForm}) :Ctrl.IControlCell;

## Параметры

**aLabel** - название колонки.

**aWidth** - ширина.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aLookupField** - если **aField** - документ, то название просматриваемого поля документа.

**aCardFileClass** - связанная картотека, объект класса [Frm.ICardForm](topic:.Custom.ComClasses.Frm.ICardForm.Default).

**aJump** - если равно True, присутствует кнопка перескока.

**aJumpFormClass** - форма, на которую ведет кнопка перескока, объект класса [IForm](topic:.Custom.ComClasses.Frm.IForm.Default).

## Назначение

Добавление в таблицу колонки, содержащей
[контрол на основе ячеек](topic:.Custom.ComClasses.Ctrl.IControlCell.Default) со связанным полем.

Возвращает ссылку на добавленный элемент.
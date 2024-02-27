---
Link: Com.Ctrl.IControlsLayout.@AddCheckBox
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddCheckBox

## Описание

    func AddCheckBox({aLabel :String}; aField :Fld.IValue; {aWidth :Numeric}) :Ctrl.ICheckBox;

## Параметры

**aLabel** - надпись на чек-боксе.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aWidth** - ширина чек-бокса.

## Назначение

Добавление [чек-бокса](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default) с заданными параметрами.

Возвращает ссылку на добавленный элемент.
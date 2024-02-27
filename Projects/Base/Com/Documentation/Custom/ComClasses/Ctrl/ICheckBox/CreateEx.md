---
Link: .Ctrl.ICheckBox.@CreateEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.ICheckBox](Default)

# Функция CreateEx

## Описание

    func CreateEx({aName :String}; aWidth :Numeric; aCaption :String; {aField :Fld.IValue}) :Ctrl.ICheckBox;

## Параметры

**aName** - имя создаваемого чек-бокса.

**aWidth** - ширина.

**aCaption** - подпись.

**aField** - переменная, которая редактируется или отображается чек-боксом.
Объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

## Назначение

Создание чек-бокса с заданными параметрами.
---
Link: .Ctrl.IRadioButton.@CreateEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IRadioButton](Default)

# Функция CreateEx

## Описание

    func CreateEx ({aName :String}; aWidth :Numeric; aCaption :String;
                   aRadioGroup :Fld.IValue; aStatic :Variant) :Ctrl.IRadioButton;

## Параметры

**aName** - имя создаваемого переключателя.

**aWidth** - ширина переключателя.

**aCaption** - надпись на переключателе.

**aRadioGroup** - переменная, с которой связан переключатель (переключатели одной группы связаны
с одной переменной). Объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aStatic** - значение, устанавливаемое в связанную переменную.

## Назначение

Создание переключателя с заданными параметрами.
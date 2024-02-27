---
Link: .Ctrl.IJumpButton.@CreateJump
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](topic:Com.Custom.ComClasses.Ctrl.IButton.Default) :
[Ctrl.IJumpButton](Default)

# Функция CreateJump

## Описание

    func CreateJump({aName :String}; aWidth :Numeric; aCaption :String;
                    aField :Fld.IValue; {aClass :Class Frm.IForm}) :Ctrl.IJumpButton;

## Параметры

**aName** - название кнопки.

**aWidth** - ширина.

**aCaption** - надпись.

**aField** - привязанное поле.

**aClass** - форма, на которую происходит переход.

## Назначение

Создание кнопки перехода на форму.
---
Link: Com.Ctrl.IControlsLayout.@AddMultiSelect
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddMultiSelect

## Описание

    func AddMultiSelect({aLabel :String}; {aLabWidth :Numeric}; aField :Fld.IValue; {aWidth :Numeric};
                        aFullSet :String[]; {aHint :String}) :Ctrl.IListEdit;

## Параметры

**aLabel** - надпись у поля ввода.

**aLabWidth** - ширина надписи.

**aField** - связанное поле, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aWidth** - ширина поля ввода.

**aFullSet** - список вариантов для выбора.

**aHint** - текст подсказки.

## Назначение

Добавление [поля ввода с множественным выбором](topic:.Custom.ComClasses.Ctrl.IListEdit.Default).

Возвращает ссылку на добавленный элемент.
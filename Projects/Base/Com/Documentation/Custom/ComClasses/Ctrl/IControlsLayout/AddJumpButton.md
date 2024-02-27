---
Link: Com.Ctrl.IControlsLayout.@AddJumpButton
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddJumpButton

## Описание

    func AddJumpButton(aJumpField :Fld.IValue; {aClass :Frm.IForm}; {aImageName :String}) :Ctrl.IJumpButton;

## Параметры

**aJumpField** - связанная переменная, объект класса [Fld.IValue](topic:.Custom.ComClasses.Fld.IValue.Default).

**aClass** - форма, на которую осуществляется переход. Объекта класса [Frm.IForm](topic:.Custom.ComClasses.Frm.IForm.Default).

**aImageName** - название иконки.

## Назначение

Добавление [кнопки перехода на форму](topic:.Custom.ComClasses.Ctrl.IJumpButton.Default).

Возвращает ссылку на добавленный элемент.
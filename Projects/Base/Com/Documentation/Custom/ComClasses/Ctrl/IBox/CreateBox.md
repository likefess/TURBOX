---
Keywords: IBox, Box, Бокс
Link: .Ctrl.IBox.@CreateBox
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](topic:Com.Custom.ComClasses.Ctrl.IFrame.Default) :
[Ctrl.IBox](Default)

# Функция CreateBox

## Описание

    func CreateBox({aName :String}; aTitle :String; {aCollapsed :Logical}) :Ctrl.IBox;

## Параметры

**aName** - название бокса.

**aTitle** - заголовок бокса (отображаемая надпись).

**aCollapsed** - если равен True, бокс развёрнут, если False - свёрнут. По умолчанию False.

## Назначение

Создание нового именованного бокса.
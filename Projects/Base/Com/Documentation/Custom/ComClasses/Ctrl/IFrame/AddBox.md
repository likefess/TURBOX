---
Link: .Ctrl.IFrame.@AddBox
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция AddBox

## Описание

    func AddBox(aName :String; {aCollapsed :Logical}; {aPrevious :Ctrl.IControl}) :Ctrl.IBox;

## Параметры

**aName** - название бокса.

**aCollapsed** - состояние бокса (True - свёрнутый, False - развёрнутый). По умолчанию False.

**aPrevious** - контрол на родительском фрейме, после которого будет идти данный Box.
  По умолчанию он будет добавлен на фрейм после последнего компонента.

## Назначение

Создание и добавление нового именованного бокса на фрейм.
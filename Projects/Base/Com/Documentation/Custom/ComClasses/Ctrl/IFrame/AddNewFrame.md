---
Link: .Ctrl.IFrame.@AddNewFrame
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция AddNewFrame

## Описание

    func AddNewFrame({aName :String}; {aCaption :String}; {aPrevious :Ctrl.IControl}) :Ctrl.IFrame;

## Параметры

**aName** - название фрейма.

**aCaption** - заголовок фрейма (отображаемая надпись).

**aPrevious** - контрол на родительском фрейме, после которого будет идти данный субфрейм.
   По умолчанию он будет добавлен на фрейм после последнего компонента.

## Назначение

Создание и добавление нового именованного субфрейма на фрейм.
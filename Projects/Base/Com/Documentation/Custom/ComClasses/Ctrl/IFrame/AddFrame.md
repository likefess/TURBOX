---
Link: .Ctrl.IFrame.@AddFrame
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция AddFrame

## Описание

    func AddFrame(aComponent :Ctrl.IFrame; {aPrevious :Ctrl.IControl}) :Ctrl.IFrame;

## Параметры

**aComponent** - добавляемый фрейм.

**aPrevious** - контрол на родительском фрейме, после которого будет идти данный субфрейм.
  По умолчанию он будет добавлен на фрейм после последнего компонента.

## Назначение

Добавление субфрейма на фрейм с инициализацией группировки контролов.

## Пример

    var NewFrame: IFrame = RootFrame.AddFrame(IFrame.CreateEx("FramePosition"));
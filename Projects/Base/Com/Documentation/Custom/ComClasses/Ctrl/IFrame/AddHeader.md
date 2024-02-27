---
Link: .Ctrl.IFrame.@AddHeader
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция AddHeader

## Описание

    func AddHeader({aName :String}; {aTitle :String}; {aSubTitle :String};
                   aMaxButton :Integer; {aButtonList :Ctrl.IButton[]}) :Ctrl.IHeader;

## Параметры

**aName** - имя создаваемого заголовка.

**aTitle** - надпись на заголовке.

**aSubTitle** - надпись на подзаголовке.

**aMaxButton** - максимальное количество отображаемых на заголовке кнопок.

**aButtonList** - перечень кнопок, массив объектов класса [Ctrl.IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default).

## Назначение

Создание и добавление субфрейма-заголовка типа [Ctrl.IHeader](topic:.Custom.ComClasses.Ctrl.IHeader.Default)
на фрейм.
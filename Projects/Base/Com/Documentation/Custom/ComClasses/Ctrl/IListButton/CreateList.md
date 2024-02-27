---
Link: .Ctrl.IListButton.@CreateList
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](topic:Com.Custom.ComClasses.Ctrl.IButton.Default) :
[Ctrl.IListButton](Default)

# Функция CreateList

## Описание

    func CreateList(aCommandName :String; {aButtonList :Ctrl.IButton[]}; {aIconName :String}) :Ctrl.IListButton;

## Параметры

**aCommandName** - команда, исполняемая при нажатии на основную кнопку.

**aButtonList** - выпадающие кнопки, массив объектов класса [Ctrl.IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default).

**aIconName** - название иконки.

## Назначение

Создание кнопки с выпадающим списком.
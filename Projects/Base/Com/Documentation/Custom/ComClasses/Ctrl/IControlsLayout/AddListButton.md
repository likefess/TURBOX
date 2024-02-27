---
Link: Com.Ctrl.IControlsLayout.@AddListButton
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddListButton

## Описание

    func AddListButton(aButtonList :Ctrl.IButton[]; {aImageName :String}; {aCommand :String}) :Ctrl.IListButton;

## Параметры

**aButtonList** - список кнопок, массив объектов класса [Ctrl.IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default).

**aImageName** - название иконки.

**aCommand** - название команды, вызываемой при нажатии.

## Назначение

Добавление [кнопки с выпадающим списком](topic:.Custom.ComClasses.Ctrl.IListButton.Default).

Возвращает ссылку на добавленный элемент.
---
Link: Com.Ctrl.IControlsLayout.@AddButtonCol
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddButtonCol

## Описание

    func AddButtonCol(aIconName :String; aOnClick :TOnClick) :Ctrl.IButton;

## Параметры

**aIconName** - иконка на кнопке.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

## Назначение

Добавление в таблицу колонки, содержащей [кнопку](topic:.Custom.ComClasses.Ctrl.IButton.Default).

Возвращает ссылку на добавленный элемент.




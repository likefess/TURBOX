---
Link: .Ctrl.IEdit.@GetEditFilter
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция GetEditFilter

## Описание

    func GetEditFilter(aIndex :Integer = 1) :String;

## Параметры

**aIndex** -  номер строки, если контрол лежит в таблице.

## Назначение

Получение общего фильтра по полю с учетом фильтра по связанному полю, фильтра из самой клетки,
а также фильтра из картотеки.
---
Link: .Ctrl.ICardTree.@DoClick
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[ICardTree](Default)

# Функция DoClick

## Описание

    func DoClick(aRec :Record; aAction :Com.Consts.ClickTypes) :Logical;

## Параметры

**aRec** - текущий документ (запись);

**aAction** - одна из предопределенных констант, описанных в типе [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes),
которая определяет действие пользователя.

## Назначение

Действие, происходящее по щелчку мышью в объекте [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default)
или при нажатии клавиши Enter, когда фокус ввода находится в этом объекте.
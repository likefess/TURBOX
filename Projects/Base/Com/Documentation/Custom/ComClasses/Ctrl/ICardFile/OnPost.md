---
Link: .Ctrl.ICardFile.@OnPost
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция OnPost

## Описание

    func OnPost(aRec :Record) :Logical;

## Параметры

**aRec** - редактируемая запись (документ).

## Назначение

Обработчик события, которое происходит при попытке сохранить измененную запись картотеки.

Если обработчик возвращает TRUE, документ сохраняется, иначе – нет.

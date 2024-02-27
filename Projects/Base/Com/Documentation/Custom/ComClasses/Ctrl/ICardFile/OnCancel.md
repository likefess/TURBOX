---
Link: .Ctrl.ICardFile.@OnCancel
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция OnCancel

## Описание

    func OnCancel(aRec :Record) :Logical;

## Параметры

**aRec** - изменённая запись.

## Назначение

Обработчик события, которое происходит при попытке отменить сделанные в картотечной записи изменения
и вернуть ее в первоначальное состояние.

Позволяет контролировать "откат" к старому состоянию записи. Если обработчик возвращает TRUE,
запись, заданная с помощью параметра Rec, возвращается в исходное состояние; если функция
возвращает FALSE – ничего не происходит.

---
Link: Com.Ctrl.IPicture.@OnClick
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IPicture](Default)

# Событие OnClick

## Описание

    OnClick :func (aSender :Ctrl.IPicture; Action :ClickTypes; X :Integer; Y :Integer; Ref :String) :Logical;

## Параметры

**aSender** - картинка, для которой произошло событие.

**Action** - тип нажатия, константа типа [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes).

**X, Y** - координаты точки нажатия.

**Ref** - ссылка.

## Назначение

Обработчик события, которое происходит при нажатии на картинку.

Если возвращает True, продолжается стандартная обработка.
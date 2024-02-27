---
Link: Com.Ctrl.IBrowser.@OnClick
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IBrowser](Default)

# Событие OnClick

## Описание

    OnClick :func (aSender :Ctrl.IBrowser; aRef :String; var aSeparate :Logical) :Logical;

## Параметры

**aSender** - браузер, с которым произошло событие.

**aRef** - ссылка, по которой происходит нажатие.

**aSeparate** - равно True, если ссылка открывается в отдельном окне.

## Назначение

Обработчик события, которое происходит при щелчке по ссылке.

Если возвращает True, переход по ссылке происходит.
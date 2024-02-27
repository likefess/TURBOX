---
Link: Com.Ctrl.IBrowser.@OnClickEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IBrowser](Default)

# Событие OnClickEx

## Описание

    OnClickEx :func (aSender :Ctrl.IBrowser; aUrl :String; aData :Storage) :Logical;

## Параметры

**aSender** - браузер, с которым произошло событие.

**aUrl** - URL-адрес ссылки, по которой происходит нажатие.

**aData** - данные, передаваемые по URL.

## Назначение

Расширенный обработчик события, которое происходит при щелчке по ссылке.

Если возвращает True, переход по ссылке происходит.

## <span style="color:red">Внимание</span>

Свойство устарело. Используйте [OnMessage](OnMessage).
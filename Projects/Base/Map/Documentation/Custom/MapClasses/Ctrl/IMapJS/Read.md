---
Link: .Ctrl.IMapJS.@Read
---

IComponent : IContainer : [Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) : [IMapJS](Default)

# Процедура Read

## Описание

    proc Read (aAsDataJson :proc (aDataJson :String));

## Параметры

**aAsDataJson** - процедура обратного вызова, передающая данные, полученные со стороны JS.

* **aDataJson** - данные в виде JSON-строки.

## Назначение

Получение карты в виде JSON-строки со стороны JavaScript, работающего внутри компонента.
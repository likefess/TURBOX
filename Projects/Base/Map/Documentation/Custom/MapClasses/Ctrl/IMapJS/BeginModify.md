---
Link: .Ctrl.IMapJS.@BeginModify
---

IComponent : IContainer : [Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) : [IMapJS](Default)

# Процедура BeginModify

## Описание

    proc BeginModify;

## Назначение

Процедура предназначена для отключения отрисовки и генерации событий карты
при добавлении компонентов карты. По завершении добавления компонентов с целью
отрисовки добавленных компонентов на карту необходимо вызвать метод [EndModify](EndModify).
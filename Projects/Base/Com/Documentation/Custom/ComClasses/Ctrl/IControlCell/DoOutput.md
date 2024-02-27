---
Link: .Ctrl.IControlCell.@DoOutput
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](Default)

# Функция DoOutput

## Описание

    DoOutput(aContext :IOutputContext) :Variant;

## Параметры

**aContext** - контекст выполнения, объект класса [IOutputContext](topic:.Custom.ComClasses.IOutputContext.Default).

## Назначение

Действие при выводе значения ячейки.

Возвращаемое значение не влияет собственно на значение ячейки - изменяется
лишь значение, предназначенное для вывода.
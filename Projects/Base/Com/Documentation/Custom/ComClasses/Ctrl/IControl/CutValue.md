---
Link: Com.Ctrl.IControl.@CutValue
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](Default)

# Функция CutValue

## Описание

    func CutValue({aContext :IOutputContext}) :Logical;

## Параметры

**aContext** - контекст получения значения, объект класса [IOutputContext](topic:.Custom.ComClasses.IOutputContext.Default).

## Назначение

Вырезание текущего значения контрола.

Для хранения значений используется класс [IClipboard](topic:.Custom.ComClasses.IClipboard.Default).

При успешном завершении возвращается True.

---
Link: Com.Ctrl.IControl.@CopyValue
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](Default)

# Функция CopyValue

## Описание

    func CopyValue({aContext :IOutputContext}) :Logical;

## Параметры

**aContext** - контекст получения значения, объект класса [IOutputContext](topic:.Custom.ComClasses.IOutputContext.Default).

## Назначение

Копирование текущего значения контрола.

Для хранения значений используется класс [IClipboard](topic:.Custom.ComClasses.IClipboard.Default).

При успешном завершении возвращается True.
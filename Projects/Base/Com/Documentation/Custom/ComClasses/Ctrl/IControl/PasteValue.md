---
Link: Com.Ctrl.IControl.@PasteValue
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](Default)

# Функция PasteValue

## Описание

    func PasteValue({aContext :IContext}) :Logical;

## Параметры

**aContext** - контекст действия, объект класса [IOutputContext](topic:.Custom.ComClasses.IOutputContext.Default).

## Назначение

Вставка текущего значения контрола.

Для хранения значений используется класс [IClipboard](topic:.Custom.ComClasses.IClipboard.Default).

При успешном завершении возвращается True.
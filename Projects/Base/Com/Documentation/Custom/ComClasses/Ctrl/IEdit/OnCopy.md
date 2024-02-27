---
Link: Com.Ctrl.IEdit.@OnCopy
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие OnCopy

## Описание

    OnCopy :func (aSender :Ctrl.IEdit; aContext :IOutputContext) :Logical;

## Параметры

**aSender** - поле ввода, в котором произошло событие.

**aContext** - контекст события, объект класса [IOutputContext](topic:.Custom.ComClasses.IOutputContext.Default).

## Назначение

Обработчик события, которое происходит при копировании значения поля ввода
в буфер обмена. Также вызывается при вызове команды Cut.

Для хранения промежуточных значений в обработчике следует использовать класс
[IClipboard](topic:.Custom.ComClasses.IClipboard.Default).

Должен возвращать True, если требуется выполнить действия по умолчанию.
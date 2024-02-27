---
Link: Com.Ctrl.IEdit.@OnPaste
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Событие OnPaste

## Описание

    OnPaste :func (aSender :Ctrl.IEdit; aContext :IContext) :Logical;

## Параметры

**aSender** - поле ввода, в котором произошло событие.

**aContext** - контекст события, объект класса [IContext](topic:.Custom.ComClasses.IContext.Default).

## Назначение

Обработчик события, которое происходит при вставке значения в поле ввода
из буфера обмена.

Для хранения промежуточных значений в обработчике следует использовать класс
[IClipboard](topic:.Custom.ComClasses.IClipboard.Default).

Должен возвращать True, если требуется выполнить действия по умолчанию.
---
Link: .Ctrl.ICardFile.@OnRearrange
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Событие OnRearrange

## Описание

    OnRearrange :proc(aSender :Ctrl.ICardFile; aAction :consts.RearrangeActions; aColumn :Ctrl.IControl);

## Параметры

**aSender** - картотека, из которой происходит вызов функции-обработчика;

**aAction** - параметр, детализирующий, какой именно атрибут столбца был изменен
и принимающий одно из значений перечислимого типа [RearrangeActions](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.RearrangeActions);

**aColumn** - указатель на столбец картотеки, в котором произошло событие.

## Назначение

Обработчик события, которое происходит после изменения свойств картотеки.
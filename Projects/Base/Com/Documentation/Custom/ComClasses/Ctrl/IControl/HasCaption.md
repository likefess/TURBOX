---
Link: .Ctrl.IControl.@HasCaption
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](Default)

# Поле HasCaption

## Описание

    HasCaption :Logical;

## Назначение

Определяет наличие/отсутсвие заголовка контрола.

Если значение поля явно не задано, то HasCaption возвращает True, если
* задано свойство [Caption](topic:.Custom.ComClasses.Ctrl.IControl.Caption);
* контрол расположен в табличном или картотечном фрейме;
* контрол расположен в группе [IGroup](topic:.Custom.ComClasses.Ctrl.IGroup.Default),
для которой задано HasCaption.


---
Link: .Ctrl.IControlCell.@MaxWidth
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](Default)

# Поле MaxWidth

## Описание

    MaxWidth :Numeric;

## Назначение

Максимальная ширина ячейки.

## Примечания

<!--На 23.06.22-->
* Работает только при размещении ячейки в адаптивной группе
([IGroup](topic:.Custom.ComClasses.Ctrl.IGroup.Default) с
[Adaptive](topic:.Custom.ComClasses.Ctrl.IGroup.Adaptive) = True).

* Не учитывается, если
[FixSize](topic:.Custom.ComClasses.Ctrl.IControl.FixSize) = True.
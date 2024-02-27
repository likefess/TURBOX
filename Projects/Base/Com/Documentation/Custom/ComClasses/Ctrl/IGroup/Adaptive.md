---
Link: .Ctrl.IGroup.@Adaptive
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IGroup](Default)

# Поле Adaptive

## Описание

    Adaptive :Logical;

## Назначение

Если значение равно True, ширина вложенных ячеек будет адаптироваться под ширину группы
пропорционально размеру ячеек ([Width](topic:.Custom.ComClasses.Ctrl.IControl.Width))
в пределах от [MinWidth](topic:.Custom.ComClasses.Ctrl.IControlCell.MinWidth)
до [MaxWidth](topic:.Custom.ComClasses.Ctrl.IControlCell.MaxWidth) ячеек.

Если значение равно False, ширина ячеек фиксированная.
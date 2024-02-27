---
Link: .Ctrl.IFrame.@MinSize
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Поле MinSize

## Описание

    MinSize :Numeric;

## Назначение

При маленьком экране, фреймы с авторазмером могут занять все доступное место и размер
табличного фрейма схлопнется в ноль. Чтобы этого не происходило, нужно установить ему
минимальный размер, меньше которого он уже не схлопнется.

Свойство имеет смысл выставлять для фреймов, у которых флаг AutoSize = False, например для
табличного фрейма.
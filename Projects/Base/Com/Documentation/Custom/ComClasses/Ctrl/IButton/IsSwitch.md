---
Link: .Ctrl.IButton.@IsSwitch
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Поле IsSwitch

## Описание

    IsSwitch :Logical;

## Назначение

Управляет использованием кнопки как флага, т.е. переключающейся между "нажатым"
и "отжатым" состоянием. Если поле [Field](topic:.Custom.ComClasses.Ctrl.IButton.Field) равно
значению False, то кнопка соответствует ненажатому состоянию (на экране кнопка отображается
как обычно - обводка серая), значению True - нажатому (обводка становится синего цвета).
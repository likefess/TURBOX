---
Link: .Ctrl.IControlCell.@FieldColor
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](Default)

# Поле FieldColor

## Описание

    FieldColor :Integer;

## Назначение

Цвет ячейки.

Не следует путать цвет ячейки и цвет самой клетки шаблона.
В том случае, если ячейка расположена в клетке шаблона с некоторым отступом,
то в клетке видна рамка с цветом фона клетки, а внутри нее – ячейка со своим цветом фона.
Когда ячейка занимает всю клетку и ей назначен непрозрачный цвет, фон самой клетки невидим.
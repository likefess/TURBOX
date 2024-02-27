---
Link: .Ctrl.ICardFile.@isHierarchy
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция isHierarchy

## Описание

    func isHierarchy :Logical;

## Назначение

Данная функция позволяет узнать, показывается ли иерархия картотеки.
Функция возвращает True, если картотека иерархическая и включен режим показа
иерархического представления картотеки (то есть
[Hierarchical](topic:.Custom.ComClasses.Ctrl.ICardFile.Hierarchical) = True и
[ShowHierarchy](topic:.Custom.ComClasses.Ctrl.ICardFile.ShowHierarchy) = True).
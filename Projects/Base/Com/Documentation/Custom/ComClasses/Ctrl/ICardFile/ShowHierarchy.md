---
Link: .Ctrl.ICardFile.@ShowHierarchy
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Поле ShowHierarchy

## Описание

    ShowHierarchy :Logical;

## Назначение

Данное свойство позволяет узнать, включен ли режим показа иерархического представления
картотеки, а также включать/отключать его. При значении ShowHierarchy = True в окне картотеки
отображаются записи текущего уровня (одной группы или корня картотеки), иначе (False) -
в так называемом плоском виде, когда отображаются все записи картотеки из всех групп с учетом
фильтра, вне зависимости от их уровня вложенности.

Данное свойство используется только для иерархических картотек, у которых свойство
[Hierarchical](topic:.Custom.ComClasses.Ctrl.ICardFile.Hierarchical) = True.
Если свойство [Hierarchical](topic:.Custom.ComClasses.Ctrl.ICardFile.Hierarchical) = False,
то независимо от значения данного свойства отобразить иерархию невозможно.
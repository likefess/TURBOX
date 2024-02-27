---
Link: .Ctrl.IDiagramJS.@ToJsonItems
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Функция ToJsonItems

## Описание

    func ToJsonItems :String;

## Назначение

Позволяет получить схему в виде JSON на основе внутренней структуры компонентов, добавленных в диаграмму.

---

<b>Пример кода</b>

    var locJson :String = JDiagram1.ToJsonItems;
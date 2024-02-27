---
Link: .Ctrl.ITable.@SortByColumn
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура SortByColumn

## Описание

    proc SortByColumn(aColumn :Ctrl.IControlCell; {aAscend :Logical});

## Параметры

**aColumn** - столбец, по которому происходит сортировка.

**aAscend** - направление сортировки (True - прямая, False - обратная), по умолчанию True.

## Назначение

Сортировка таблицы по указанному столбцу.

Этот метод вызывается при нажатии на заголовок таблицы.
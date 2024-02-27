---
Link: .Ctrl.IFrame.@SortByColumn
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура SortByColumn

## Описание

    proc SortByColumn(aColumn :Ctrl.IControlCell; {aAscend :Logical});

## Параметры

**aColumn** - колонка, по которой происходит сортировка.

**aAscend** - направление сортировки (True - прямая, False - обратная). По умолчанию True.

## Назначение

Сортировка подтаблицы по колонке.

Этот метод вызывается при нажатии на заголовок сортируемой таблицы.

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
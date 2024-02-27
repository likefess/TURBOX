---
Link: .Ctrl.ITable.@Sortable
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Поле Sortable

## Описание

    Sortable :Logical;

## Назначение

Возможность сортировки таблицы.

При установленном флаге все заголовки негрупповых столбцов получают стиль StaticHeader
и при нажатии на такой заголовок происходит сортировка таблицы. Повторное нажатие на заголовок
приводит к обратной сортировке.

Если для заголовка столбца указан собственный обработчик OnClick и/или свойство StaticStyle,
то эти свойства перекрывают стандартные. Таким образом для конкретных столбцов можно отменить
сортировку или сделать другую реакцию на клик по заголовку. Или изменить стандартный стиль
StaticHeader на другой.
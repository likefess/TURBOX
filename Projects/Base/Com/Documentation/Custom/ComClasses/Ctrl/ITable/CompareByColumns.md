---
Link: .Ctrl.ITable.@CompareByColumns
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Функция CompareByColumns

## Описание

    func CompareByColumns(aColumns :Ctrl.IControlCell[]; {aAscends :Logical[]}) :TComparer;

## Параметры

**aColumns** - столбцы таблицы, по значениям которых производится сравнение.

**aAscends** - направления сортировки (True - прямая, False - обратная).

## Назначение

Создание функции сравнения строк таблицы по значениям в заданных столбцах. При этом с помощью
массива aAscends можно указать по каким столбцам делать прямую сортировку, а по каким обратную.

Полученная функция используется для сравнения строк при сортировке строк таблицы функцией
[SortBy](topic:.Custom.ComClasses.Ctrl.ITable.SortBy).

Тип возвращаемой функции - [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).

## Пример

      FramePositions.SortBy(FramePositions.CompareByColumns([EditAmount, EditProduct],
                                                            [False, True]));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара


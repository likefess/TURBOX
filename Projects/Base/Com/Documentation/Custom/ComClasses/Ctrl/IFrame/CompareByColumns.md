---
Link: .Ctrl.IFrame.@CompareByColumns
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция CompareByColumns

## Описание

    func CompareByColumns(aColumns :Ctrl.IControlCell[]; {aAscends :Logical[]}) :TComparer;

## Параметры

**aColumns** - колонки подтаблицы, по значениям которых производится сравнение.

**aAscend** - направления сортировки (True - прямая, False - обратная).

## Назначение

Производит сравнения по значениям в заданных колонках. При этом с помощью массива aAscends
можно указать по каким колонкам делать прямую сортировку, а по каким - обратную.

Возвращает функцию типа [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).

## Пример

      FramePositions.SortBy(FramePositions.CompareByColumns([EditAmount, EditProduct],
                                                            [False, True]));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
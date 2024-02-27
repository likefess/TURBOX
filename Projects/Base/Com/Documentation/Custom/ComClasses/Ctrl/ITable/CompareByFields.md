---
Link: .Ctrl.ITable.@CompareByFields
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Функция CompareByFields

## Описание

    func CompareByFields(aFields :String) :TComparer;

## Параметры

**aFields** - поля таблицы через запятую.

## Назначение

Создание функции сравнения строк таблицы по полям таблицы, указанным в строке через запятую.
При этом поля не обязательно должны отображаться в таблице.

Полученная функция используется для сравнения строк при сортировке строк таблицы функцией
[SortBy](topic:.Custom.ComClasses.Ctrl.ITable.SortBy).

Тип возвращаемой функции - [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).

## Пример

      FramePositions.SortBy(FramePositions.CompareByFields('Amount-, Product.Name+'));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара

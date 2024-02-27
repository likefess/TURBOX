---
Link: .Ctrl.ITable.@SortBy
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Процедура SortBy

## Описание

    proc SortBy(aComparer :TComparer; {aAscend :Logical});

## Параметры

**aComparer** - функция сравнения строчек таблицы.

**aAscend** - направление сортировки (True - прямая, False - обратная), по умолчанию True.

## Назначение

  Программная сортировка таблицы.

  В параметре aComparer нужно передать функцию сравнения строк таблицы типа
  [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).
  Для примеров в классе ITable реализованы две функции, создающие такие функции сравнения:
  [CompareByColumns](topic:.Custom.ComClasses.Ctrl.ITable.CompareByColumns),
  [CompareByFields](topic:.Custom.ComClasses.Ctrl.ITable.CompareByFields).

  Можно написать и использовать свои функции сравнения.

  Для простых случаев можно воспользоваться методом
  [SortByColumn](topic:.Custom.ComClasses.Ctrl.ITable.SortByColumn).
  При нажатии на заголовок сортируемой таблицы вызывается как раз этот метод.

## Пример

      FramePositions.SortBy(FramePositions.CompareByFields('Amount-, Product.Name+'));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара

      FramePositions.SortBy(FramePositions.CompareByColumns([EditAmount, EditProduct],
        [False, True]));   -- аналогичная сортировка

---
Link: .Ctrl.IFrame.@SortBy
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура SortBy

## Описание

    proc SortBy(aComparer :TComparer; {aAscend :Logical});

## Параметры

**aComparer** - функция сравнения строчек таблицы. Тип - [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).

**aAscend** - направление сортировки (True - прямая, False - обратная). По умолчанию True.

## Назначение

  В параметре aComparer нужно передать функцию сравнения строчек таблицы. Для примеров
  в классе IFrame реализованы две функции сравнения:
  [CompareByColumns](topic:.Custom.ComClasses.Ctrl.IFrame.CompareByColumns),
  [CompareByFields](topic:.Custom.ComClasses.Ctrl.IFrame.CompareByFields).

  Можно написать и использовать свои функции сравнения.

  Для простых случаев можно воспользоваться методом класса IFrame [SortByColumn](topic:.Custom.ComClasses.Ctrl.IFrame.SortByColumn).
  При нажатии на заголовок сортируемой таблицы вызывается как раз этот метод.

## Пример

      FramePositions.SortBy(FramePositions.CompareByFields('Amount-, Product.Name+'));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара

      FramePositions.SortBy(FramePositions.CompareByColumns([EditAmount, EditProduct],
        [False, True]));   -- аналогичная сортировка

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
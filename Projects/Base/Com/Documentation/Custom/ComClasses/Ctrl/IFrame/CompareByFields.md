---
Link: .Ctrl.IFrame.@CompareByFields
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция CompareByFields

## Описание

    func CompareByFields(aFields :String) :TComparer;

## Параметры

**aFields** - поля подтаблицы через запятую.

## Назначение

Производит сравнение по полям подтаблицы, указанным в строке через запятую. При этом поля
не обязательно должны отображаться в таблице.

Возвращает функцию типа [TComparer](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TComparer).

## Пример

      FramePositions.SortBy(FramePositions.CompareByFields('Amount-, Product.Name+'));
        -- первичная сортировка по количеству в обратном порядке, вторичная - по имени товара

## <span style="color:red">Внимание</span>

Свойство устарело.

Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).
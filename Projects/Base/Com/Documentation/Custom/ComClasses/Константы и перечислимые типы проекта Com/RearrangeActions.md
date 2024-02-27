# Перечислимый тип RearrangeActions

## Описание

    type RearrangeActions = (
      ResizeColumn         = 0
     ,MoveColumn           = 1
     ,VisibilityColumn     = 2
     ,SortByColumn         = 3
     ,ShowHierarchyChanged = 4
     ,OtherRearrangeAction = 5
    );

## Назначение

Константы этого типа описывают возможные действия пользователя со столбцами, а также действия,
связанные с изменением ширины панелей или включением/выключением видимости удаленных записей.

Перечислимый тип RearrangeActions включает следующие константы:

**ResizeColumn** - изменена ширина столбца;

**MoveColumn** - столбец перемещен на новое место;

**VisibilityColumn** - столбец сделан видимым или скрыт;

**SortByColumn** - изменен порядок сортировки столбца;

**ShowHierarchyChanged** - выполнена команда "Иерархический вид", т.е. произошла смена режима
выводить/не выводить записи в иерархическом виде;

**OtherRearrangeAction** - действие, при котором изменяется ширина панелей
или включается/выключается видимость удаленных записей.

Константы, определенные в данном типе, используются в процедуре
[OnRearrange](topic:.Custom.ComClasses.Ctrl.ICardFile.OnRearrange)
класса [ICardFile](topic:.Custom.ComClasses.Ctrl.ICardFile.Default).
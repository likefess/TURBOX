---
Link:.Consts.@ActionsOnType
---

# Перечислимый тип ActionsOnType

## Описание

    type ActionsOnType = (
       DefaultAction     = 0
      ,EditOnType        = 1
      ,FindDlgOnType     = 2
      ,FilterDlgOnType   = 3
      ,FastFindOnType    = 4
      ,FastFilterOnType  = 5
    );

## Назначение

Используется для задания действия при вводе значения в поле ввода или изменении значения флага.

Перечислимый тип ActionsOnType включает следующие константы:

**DefaultAction** - действие по умолчанию;

**EditOnType** - редактирование;

**FindDlgOnType** - открытие диалога поиска;

**FilterDlgOnType** - открытие диалога фильтра;

**FastFindOnType** - быстрый поиск без открытия диалога;

**FastFilterOnType** - быстрая фильтрация без открытия диалога.

Константы, определенные в данном типе, используются в свойстве
[ActionOnType](topic:.Custom.ComClasses.Ctrl.IEdit.ActionOnType)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [ActionOnType](topic:.Custom.ComClasses.Ctrl.ICheckBox.ActionOnType)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).

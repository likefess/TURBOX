---
Link:.Consts.@ButtonStyles
---

# Перечислимый тип ButtonStyles

## Описание

    type ButtonStyles = (
      NoButton      = 0
     ,DefaultButton = 1
     ,LookupButton  = 2
     ,ComboButton   = 3
     );

## Назначение

Используется для задания стиля кнопки, расположенной на поле ввода.

Перечислимый тип ButtonStyles включает следующие константы:

**NoButton** - нет кнопки;

**DefaultButton** - стиль, используемый по умолчанию в зависимости от формата поля;

**LookupButton** - кнопка обзора (три точки);

**ComboButton** - выпадающий список (перевернутый треугольник).

Константы, определенные в данном типе, используются в свойстве
[ButtonStyle](topic:.Custom.ComClasses.Ctrl.IEdit.ButtonStyle)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default).

---
Link: .Consts.@ClickTypes
---

# Перечислимый тип ClickTypes

## Описание

    type ClickTypes = (
      SingleClick   = 0
     ,DoubleClick   = 1
     ,EnterPressed  = 2
     ,ButtonPressed = 3
    );

## Назначение

Используется для обозначения действий пользователя.

Перечислимый тип ClickTypes включает следующие константы:

**SingleClick** - выполнен щелчок мышью;

**DoubleClick** - выполнен двойной щелчок мышью;

**EnterPressed** - нажата клавиша Enter;

**ButtonPressed** - нажата кнопка обзора .

Константы, определенные в данном типе, используются в
типе [TOnClickIcon](topic:.Custom.ComClasses.Ctrl.ITable.TOnClickIcon)
класса [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default),
функциях [DoClick](topic:.Custom.ComClasses.Ctrl.IControlCell.DoClick)
и [DoCaptionClick](topic:.Custom.ComClasses.Ctrl.IControlCell.DoCaptionClick)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default),
а также в функции [DoClick](topic:.Custom.ComClasses.Ctrl.ICardTree.DoClick)
класса [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default).

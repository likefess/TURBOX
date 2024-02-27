---
Link:.Consts.@TOnEnter
---

# Тип TOnEnter

## Описание

    type TOnEnter = func(aSender :Ctrl.IControlCell;
                         aContext :IContext; aAction :EnterTypes) :Logical;

## Параметры

**aSender** - контрол, для которого происходит вызов;

**aContext** - структура данных, описывающая контекст выполнения;

**aAction** - содержит предопределенную константу, описывающую тип активизации клетки
([EnterTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.EnterTypes)).

## Назначение

Тип TOnEnter предназначен для задания функции-обработчика события, которое
происходит каждый раз, когда пользователь начинает вводить что-либо в поле ввода клетки.

Обработчик должен вернуть True, если редактирование поля следует разрешить, или False,
если редактирование запрещено.

Используется для задания события [OnEnter](topic:.Custom.ComClasses.Ctrl.IEdit.OnEnter)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
и [OnEnter](topic:.Custom.ComClasses.Ctrl.ICheckBox.OnEnter)
класса [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default).

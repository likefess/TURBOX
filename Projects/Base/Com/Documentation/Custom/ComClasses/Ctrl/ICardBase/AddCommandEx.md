---
Link: .Ctrl.ICardBase.@AddCommandEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](Default)

# Процедура AddCommandEx

## Описание

    proc AddCommandEx(aCmd :String; aOnClick :TOnClick);

## Параметры

**aCmd** - название команды.

**aOnClick** - обработчик события, которое происходит при вызове добавляемой команды,
тип -- [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

## Назначение

Добавление кнопки-команды в [RowCommands](topic:.Custom.ComClasses.Ctrl.ICardBase.RowCommands).

## <span style="color:red">Внимание</span>

Метод не рабочий. Используйте стандартное меню картотеки.
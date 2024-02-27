---
Link: .Ctrl.IFrame.@OnSwitch
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Событие OnSwitch

## Описание

    OnSwitch :TOnSwitch;

## Назначение

Обработчик события, которое вызывается при ручном переключении закладки пользователем.
При программной установке текущего фрейма событие не вызывается.

Если нужно сделать часть действий до момента переключения, а часть действий после
переключения, то:

    func Frame_OnSwitch(aSender :Ctrl.IFrame; aSubFrame :Ctrl.IFrame) :Logical;
      -- действия до момента переключения
      aSender.CurrentFrame = aSubFrame;
      -- действия после переключения
      Result = False;  -- запрещаем стандартную обработку
    end;

Событие имеет смысл для фрейма, у которого субфреймы расположены на закладках.

Тип функции-обработчика -
[TOnSwitch](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnSwitch).
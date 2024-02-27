---
Link: .ITimer.@Active
---

IComponent :
[ITimer](topic:.Custom.ComClasses.ITimer.Default)

# Поле Active

## Описание

    Active :Logical;

## Назначение

Когда поле имеет значение TRUE, таймер активен и генерирует событие
[OnTimer](topic:.Custom.ComClasses.ITimer.OnTimer)
через каждый период времени, равный заданному
[интервалу](topic:.Custom.ComClasses.ITimer.Interval).

По умолчанию таймер не активен.

## Пример

```
var vTimer :Com.ITimer
var vStatic :Com.Ctrl.IStatic;

proc TimerAlarm(aSender :Com.ITimer)
  vStatic.Caption = "Current time: " + Str(Time)
end

proc ButtonOnClick(aSender :Com.Ctrl.IControl; aIndex :Integer)
  vTimer = ITimer.Create       -- создание таймера
  vTimer.Interval = 1          -- установка интервала
  vTimer.OnTimer = @TimerAlarm -- установка обработчика событий
  vTimer.Active = True         -- запуск таймера
end
```
---
Link: .ITimer.@Interval
---

IComponent :
[ITimer](topic:.Custom.ComClasses.ITimer.Default)

# Поле Interval

## Описание

    Interval :Numeric;

## Назначение

Интервал времени между двумя последовательными событиями, генерируемыми таймером.
Время задается в секундах.

По умолчанию интервал равен 0 и должен быть изменен.

Минимально возможный интервал срабатывания на WEB 1 секунда.

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
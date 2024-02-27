---
Link: .ITimer.@OnTimer
---

IComponent :
[ITimer](topic:.Custom.ComClasses.ITimer.Default)

# Событие OnTimer

## Описание

    OnTimer :proc(aSender :ITimer);

## Аргументы

**aSender** - указатель на объект-таймер, от которого пришло событие.
Таким образом, один обработчик события может использоваться для контроля нескольких таймеров.

## Назначение

Обработчик событий, генерируемых таймером. Событие генерируется с периодом,
заданным с помощью свойства
[Interval](topic:.Custom.ComClasses.ITimer.Interval).

Если таймер не [активен](topic:.Custom.ComClasses.ITimer.Active),
событие не происходит.

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
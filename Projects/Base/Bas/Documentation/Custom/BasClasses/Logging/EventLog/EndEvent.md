---
Title: Процедура EndEvent
Keywords: EndEvent
Link: .Logging.EventLog.@EndEvent
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Процедура EndEvent
---

## Описание

```
proc EndEvent(aEvent :TLogEvent)
```

## Параметры

**aEvent** - событие, окончание которого необходимо зарегистрировать.

## Назначение

Регистрация факта окончания события с ненулевой длительностью (Длящегося события)
с фиксацией этой длительности.

Доступен только для событий, в шаблоне которых взведен флаг MeasureDuration (Длящееся событие).
Факт начала Длящегося события регистрируется стандартным образом - при помощи метода
[Event](topic:.Custom.BasClasses.Logging.EventLog.Event)
или иных методов генерации событий протокола. Для отражения факта окончания такого события
необходимо вызвать метод протокола EndEvent.

В качестве параметра в EndEvent необходимо передать ссылку на созданное событие.

## Пример

```
  proc RunProcees;
    var vLogEvent = fLog.Event (fLog.StartProcess,, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
    RunProcessLow;
    fLog.EndEvent(vLogEvent);
  end;
```
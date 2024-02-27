---
Title: Процедура LogWarning
Keywords: LogWarning
Link: .Logging.EventLog.@LogWarning
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Процедура LogWarning
---

## Описание

```
proc LogWarning(const aMessage :String; ...aParams)
```

## Параметры

**aMessage** - шаблон сообщения (в синтаксисе функции [Sys.Strings.Format](topic:SYS.Custom.Classes.Strings.Format)).

**aParams** - фактические значения для выполнения макроподстановки в шаблон сообщения **aMessage**.

## Назначение

Вывод предупреждения в протокол.

Метод при помощи функции Format(**aMessage**, **aParams**) конструирует текст предупреждения
и выводит его в протокол.

## Пример

```
class MyClass;

  import Com.Vars;

  var MinAvailibleRate :Numeric;
  var MaxAvailibleRate :Numeric;

  proc MyAlgorythm(aParam :Numeric);
    if aParam < MinAvailibleRate or aParam > MaxAvailibleRate then
      CommonLog.LogWarning("MyAlgorythm: переданое значение параметра (%d) находится вне ожидаемого допустимого диапазона (%d - %d)",
                           aParam, MinAvailibleRate, MaxAvailibleRate);
    end;
    DoAlgorithm(aParam);
  end;

  proc DoAlgorithm(aParam :Numeric);
  end;
end
```
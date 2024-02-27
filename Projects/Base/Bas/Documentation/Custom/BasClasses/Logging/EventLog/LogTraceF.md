---
Title: Процедура LogTraceF
Keywords: LogTraceF
Link: .Logging.EventLog.@LogTraceF
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Процедура LogTraceF
---

## Описание

```
proc LogTraceF(const aMessage :String; ...aParams)
```

## Параметры

**aMessage** - шаблон сообщения (в синтаксисе функции [Sys.Strings.Format](topic:SYS.Custom.Classes.Strings.Format)).

**aParams** - фактические значения для выполнения макроподстановки в шаблон сообщения **aMessage**.

## Назначение

Вывод информационного сообщения в протокол.

Метод при помощи функции Format(**aMessage**, **aParams**) конструирует текст сообщения
и выводит его в протокол.

## Пример

```
class MyClass;

  import Com.Vars;

  proc MyAlgorythm(aParam :Numeric);
    CommobLog.LogTraceF('MyAlgorythm starts with %d...', aParam);
    DoAlgorithm(aParam);
    CommobLog.LogTraceF('MyAlgorythm ends successfully...');
  end;

  proc DoAlgorithm(aParam :Numeric);
  end;
end
```
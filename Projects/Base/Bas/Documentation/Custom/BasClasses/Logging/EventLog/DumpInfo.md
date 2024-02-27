---
Title: Процедура DumpInfo
Keywords: DumpInfo
Link: .Logging.EventLog.@DumpInfo
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Процедура DumpInfo
---

## Описание

```
proc DumpInfo(const anInfo :Variant[]; aMessage :String = ``; ...aMessageParams)
```

## Параметры

**anInfo** - любая информация в формате [Ключ1, Значение1, Ключ2, Значение2...].

**aMessage** - сообщение.

**aMessageParams** - параметры сообщения.

## Назначение

Вывод набора информации в протокол.

## Пример

```
class MyClass;
 
  import Com.Vars;

  var fFlags :Integer;
  var fState :Integer;

  proc MyAlgorythm(aParam :Numeric);
    CommobLog.DumpInfo(['Flags', fFlags, 'State', fState], 'MyAlgorythm starts with %d...', aParam);
    DoAlgorithm(aParam);
    CommobLog.DumpInfo(['Flags', fFlags, 'State', fState],'MyAlgorythm ends successfully...');
  end;

  proc DoAlgorithm(aParam :Numeric);
  end;
end
```
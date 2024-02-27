---
Title: Процедура DumpError
Keywords: DumpError
Link: .Logging.EventLog.@DumpError
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Процедура DumpError
---

## Описание

```
proc DumpError(ErrorCode :Integer; const ErrorText :String; const AddInfo :Variant[] = nil)
```

## Параметры

**ErrorCode** - код ошибки.

**ErrorText** - текст ошибки.

**AddInfo** - любая дополнительная информация, например значения переменных и т.п.
  в формате [Ключ1, Значение1, Ключ2, Значение2...].

## Назначение

Протоколирование ошибки, произошедшей в ходе работы системы.

## Пример

```
class MyClass;

  import Com.Vars;

  proc MyAlgorythm(aParam :Numeric);
    try
      DoAlgorithm(aParam);
    except
      CommobLog.DumpError(ErrorCode, ErrorText, ['Param', aParam]);
      raise;
    end;
  end;

  proc DoAlgorithm(aParam :Numeric);
  end;
end
```
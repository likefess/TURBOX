---
Title: Функция CreateAppend
Keywords: CreateAppend
Link: .Logging.EventLog.@CreateAppend
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Функция CreateAppend
---

## Описание

```
func CreateAppend ( const aName :String;
                    aEvents :TLogEventProviderKind = nil;
                    aStorageKind :TLogEventStorageKind = logDefaultStorage;
                    const aMinLogEventType :TLogEventType = TLogEventType(-999)
                    ) :SelfType
```

## Параметры

**aName** - имя протокола.

**aEvents** - класс контейнера шаблонов событий.

**aStorageKind** - тип хранилища.

**aMinLogEventType** - минимальный тип регистрируемого в протоколе события.

## Назначение

Создание нового протокола или открытие существующего протокола на добавление.

Если протокол с именем **aName** уже существует, то открывает его на добавление,
в противном случае - создает новый протокол.

## Пример

```
class MyClass;

  proc MyAlgorythm;
    var vMyLog = Bas.Logging.EventLog.CreateAppend('MyAlgorythmLog');
    vMyLog.LogTraceF('MyAlgorythm starts...');
    try
      DoAlgorithm;
    except
      vMyLog.DumpError(ErrorCode, ErrorText);
      raise;
    end;
    vMyLog.LogTraceF('MyAlgorythm ends successfully...');
  end;

  proc DoAlgorithm;
  end;

end
```
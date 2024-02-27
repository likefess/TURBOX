---
Title: Функция CreateNew
Keywords: CreateNew
Link: .Logging.EventLog.@CreateNew
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Функция CreateNew
---

## Описание

```
func CreateNew ( const aName :String;
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

Создание нового протокола.

Имя протокола должно быть уникальным для заданного типа хранилища.
Если протокол с именем **aName** уже существует, то логирование вестись не будет и
в системный журнал событий будет занесена информация об ошибка создания протокола.

Если значение **aMinLogEventType**  не передано, то настройки минимального регистрируемого
типа события берутся из настроек информационной базы. Таким образом достигается
возможность формирования логов разной подробности без изменения кода и/или перезапуска
сессии и серверов.

## Пример

```
class MyClass;

  proc MyAlgorythm;
    var vMyLog = Bas.Logging.EventLog.CreateNew('MyAlgorythmLog');
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
---
Title: Функция CreateRead
Keywords: CreateRead
Link: .Logging.EventLog.@CreateRead
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Функция CreateRead
---

## Описание

```
func CreateRead ( const aName :String;
                  aEvents :TLogEventProviderKind = nil;
                  aStorageKind :TLogEventStorageKind = logDefaultStorage
                  ) :SelfType
```

## Параметры

**aName** - имя протокола.

**aEvents** - класс контейнера шаблонов событий.

**aStorageKind** - тип хранилища.

## Назначение

Открытие существующего протокола на чтение.

Протокол с именем **aName** должен существовать.

## Пример

```
proc CheckSuccess(const aLogName :String);
  try
    var vLog = Bas.Logging.EventLog.CreateRead(aLogName);
    if vLog.fErrCount > 0 then
      SendMail('MyEmail@mail.ru', 'В процессе исполнения алгоритма были ошибки. Подробнее см. ' + aLogName);
    else
      SendMail('MyEmail@mail.ru', 'Алгоритм выполнен успешно. Подробнее см. ' + aLogName);
    end;
  except
    SendMail('MyEmail@mail.ru', ErrorText);
  end;
end;
```
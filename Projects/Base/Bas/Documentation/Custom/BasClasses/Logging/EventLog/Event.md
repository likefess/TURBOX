---
Title: Функция Событие / Event
Keywords: Событие, Event
Link: .Logging.EventLog.@Event
---

IComponent : IContainer :
[Logging.EventLog](topic:.Custom.BasClasses.Logging.EventLog.Default)

# Функция Событие / Event
---

## Описание

```
func Событие synonym Event ( const aEventTpl :Variant;
                             const aParentEvent :TLogEvent = nil;
                             const aEventMsgParams :Variant[] = nil;
                             const aEventParams :Variant[] = nil;
                             ) :TLogEvent
```

## Параметры

**aEventTpl** - шаблон (класс) события.

**aParentEvent** - ссылка на родительское событие.

**aEventMsgParams** - значения параметров сообщения (задается в шаблоне события).

**aEventParams** - значения параметров события (перечень параметров задается в шаблоне события).

**anAddInfo** - произвольная дополнительная информация в формате [Ключ1, Значение1, Ключ2, Значение2...].

## Назначение

Регистрация в протоколе события в соответствии с заданным шаблоном и переданными параметрами.

Возвращает ссылку на событие либо nil, если тип шаблона события ниже установленного
минимального типа.
Ссылка на событии может быть использована:
  * при регистрации последующих событий, в качестве родительского события;
  * при регистрации окончания события при помощи метода
  [EndEvent](topic:.Custom.BasClasses.Logging.EventLog.EndEvent), если в шаблоне события
  указано, что оно длящееся.

В качестве шаблона события может быть передана как ссылка на шаблон:
```
fLog.Event (fLog.StartProcess,, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
```
так и имя (CompID) шаблона события:
```
fLog.Event ('StartProcess',, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
```

## Пример

```
class MyClass;
 
  var fSettingsRec :TSettingsRec;
 
  proc MyAlgorythm;
    var vMyLog = MyLog.CreateAppend('MyAlgorythmLog');
    vMyLog.Event(vMyLog.StartProcess,, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
    var vStartTime = IntervalSec;
    try
      DoAlgorithm;
    except
      vMyLog.DumpError(ErrorCode, ErrorText, 'SettingsRec', fSettingsRec);
      raise;
    end;
    vMyLog.Event(vMyLog.EndProcess,, [ClassName], [IntervalSec - vStartTime]);
  end;
 
  proc DoAlgorithm;
  end;
end
```
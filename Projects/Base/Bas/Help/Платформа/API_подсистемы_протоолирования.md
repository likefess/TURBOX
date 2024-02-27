# Программный интерфейс подсистемы протоколирования
---
Программный интерфейс (API) подсистемы протоколирования предствлен классом Bas.Logging.EventLog, позволяющему создавать, вести запись и считывать протоколы (логи).
Подробнее о полсистеме протоколирования читайте здесь: http://wiki.tengry.com/confluence/pages/viewpage.action?pageId=104005856.

---

## Конструкторы протокола

---

### CreateNew
```
func CreateNew ( const aName :String;
                 aEvents :TLogEventProviderKind = nil;
                 aStorageKind :TLogEventStorageKind = logDefaultStorage;
                 const aMinLogEventType :TLogEventType = TLogEventType(-999)
                 ) :SelfType;
```
Создает новый протокол.

**Параметры**:
 - aName - имя протокола.
 - aEvents - класс контейнера шаблонов событий.
 - aStorageKind - тип хранилища.
 - aMinLogEventType минимальный тип регистрируемого в протоколе события.

Имя протокола должно быть уникальным для заданного типа хранилища.
Если протокол с именем aName уже существует, то логирование вестись не будет и в системный журнал событий будет занесена информация об ошибка создания протокола.

Если значение aMinLogEventType  не передано, то настройки минимального регистрируемого типа события берутся из настроек информационной базы. Таким образом достигается возможность формирования логов разной подробности без изменения кода и(или) перезапуска сессии и серверов.  

**Пример**:
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

---

### CreateRead
```
func CreateRead ( const aName :String;
                  aEvents :TLogEventProviderKind = nil;
                  aStorageKind :TLogEventStorageKind = logDefaultStorage
                  ) :SelfType;
```
Открывает существующий протокол на чтение.

**Параметры**:
 - aName - имя протокола.
 - aEvents - класс контейнера шаблонов событий.
 - aStorageKind - тип хранилища.

Протокол с именем aName должен существовать.

**Пример**:
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
---

### CreateAppend
```
func CreateAppend ( const aName :String;
                    aEvents :TLogEventProviderKind = nil;
                    aStorageKind :TLogEventStorageKind = logDefaultStorage;
                    const aMinLogEventType :TLogEventType = TLogEventType(-999)
                    ) :SelfType;
```

Создает новый протокол или открывает существующий протокол на добавление.

**Параметры**:
 - aName - имя протокола.
 - aEvents - класс контейнера шаблонов событий.
 - aStorageKind - тип хранилища;
 - aMinLogEventType минимальный тип регистрируемого в протоколе события.

Если протокол с именем aName уже существует, то открывает его на добавление, в противном случае - создает новый протокол`;


**Пример**:
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

---

## Свойства и метода протокола

---

### LogTraceF
```
proc LogTraceF(const aMessage :String; ...aParams);
```
Выводит информационное сообщение в протокол.

**Параметры**:
 - aMessage - шаблон сообщения (в синтаксисе функции Sys.Strings.Format);
 - aParams  - фактические значения для выполнения макроподстановки в шаблон сообщения aMessage.

Метод при помощи функции Format(aMessage, aParams) конструирует текст сообщения и выводит его в протокол.

**Пример**.
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

---

### LogWarning
```
proc LogWarning(const aMessage :String; ...aParams);
```
Выводит предупреждение в протокол.

**Параметры**:
 - aMessage - шаблон сообщения (в синтаксисе функции Sys.Strings.Format);
 - aParams  - фактические значения для выполнения макроподстановки в шаблон сообщения aMessage.

Метод при помощи функции Format(aMessage, aParams) конструирует текст предупреждения и выводит его в протокол.

**Пример**.
```
class MyClass;
 
  import Com.Vars;

  var MinAvailibleRate :Numeric;
  var MaxAvailibleRate :Numeric;

 
  proc MyAlgorythm(aParam :Numeric);
    if aParam < MinAvailibleRate or aParam > MaxAvailibleRate then
      CommonLog.LogWarning("MyAlgorythm: переданое значение параметра (%d) находится вне ожидаемого допустимого диапазона (%d - %d)", aParam, MinAvailibleRate, MaxAvailibleRate);
    end;
    DoAlgorithm(aParam);
  end;

  proc DoAlgorithm(aParam :Numeric);
  end;
end
```

---

### DumpError
```
proc DumpError(ErrorCode :Integer; const ErrorText :String; const AddInfo :Variant[] = nil);
```
Протоколирует ошибку произошедшую в ходе работы системы.

**Параметры**:
 - ErrorCode - код ошибки;
 - ErrorText - текст ошибки;
 - AddInfo - любая дополнительная информация, например значения переменных и т.п. в формате [Ключ1, Значение1, Ключ2, Значение2...].

**Пример**.
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

---

### DumpInfo
```
proc DumpInfo(const anInfo :Variant[]; aMessage :String = ``; ...aMessageParams);
```
Выводит набор информации в протокол.

**Параметры**:
 - anInfo - любая информация в формате [Ключ1, Значение1, Ключ2, Значение2...];
 - aMessage - сообщение;
 - aMessageParams - параметры сообщения.

**Пример**.
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

---

### Event
```
func Событие synonym Event (
const aEventTpl :Variant; -- шаблон события
const aParentEvent :TLogEvent = nil; -- родительское событие
const aEventMsgParams :Variant[] = nil; -- значения параметров сообщения
const aEventParams :Variant[] = nil -- фактические значения параметров события
) :TLogEvent;
```
Регистрирует в протоколе событие в соответствии с заданным шаблоном и переданными параметрами.

**Параметры**:
 - aEventTpl - шаблон(класс) события;
 - aParentEvent - ссылка на родительское событие;
 - aEventMsgParams - значения параметров сообщения (задается в шаблоне события);
 - aEventParams - значения параметров события (перечень параметров задается в шаблоне события);
 - anAddInfo - произвольная дополнительная информация в формате [Ключ1, Значение1, Ключ2, Значение2...].

Возвращает ссылку на событие либо nil, если тип шаблона события ниже установленного минимального типа.
Ссылка на событии может быть использована:
  а) при регистрации последующих событий, в качестве родительского события;
  б) при регистрации окончания события при помощи метода EndEvent, если в шаблоне события указано, что оно длящееся.

В качестве шаблона события может быть передана как ссылка на шаблон:
```
fLog.Event (fLog.StartProcess,, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
```
так и имя (CompID) шаблона события:
```
fLog.Event ('StartProcess',, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
```

**Пример**:
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

---

### EndEvent
```
proc EndEvent(aEvent :TLogEvent);
```
Регистрирует факт окончания события с ненулевой длительностью (Длящегося события) с фиксацией этой длительности.

**Параметры**:
 - aEvent - событие, окончание которого необходимо зарегистрировать.

Доступен только для событий, в шаблоне которых взведен флаг MeasureDuration (Длящееся событие).
Факт начала Длящегося события регистрируется стандартным образом - при помощи метода Event или иных методов генерации событий протокола.
Для отражения факта окончания такого события необходимо вызвать метод протокола EndEvent.
В качестве параметра в EndEvent необходимо передать ссылку на созданное событие.

**Пример**:
```
  proc RunProcees;
    var vLogEvent = fLog.Event (fLog.StartProcess,, [ClassName], [ClassName, fSettingsRec, CurrentUser]);
    RunProcessLow;
    fLog.EndEvent(vLogEvent);
  end;
```
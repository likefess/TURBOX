---
Title: EventLog
Keywords: EventLog
Link: .Logging.EventLog
---

IComponent : IContainer :

# Класс EventLog / Протокол
---

Программный интерфейс (API)
[подсистемы протоколирования](topic:.Custom.ПодсистемаПротоколирования.Default).
Позволяет создавать, вести запись и считывать протоколы (логи).

## Конструкторы протокола

* [Функция CreateNew](topic:.Custom.BasClasses.Logging.EventLog.CreateNew)
* [Функция CreateRead](topic:.Custom.BasClasses.Logging.EventLog.CreateRead)
* [Функция CreateAppend](topic:.Custom.BasClasses.Logging.EventLog.CreateAppend)

## Свойства и методы протокола

* [Процедура LogTraceF](topic:.Custom.BasClasses.Logging.EventLog.LogTraceF)
* [Процедура LogWarning](topic:.Custom.BasClasses.Logging.EventLog.LogWarning)
* [Процедура DumpError](topic:.Custom.BasClasses.Logging.EventLog.DumpError)
* [Процедура DumpInfo](topic:.Custom.BasClasses.Logging.EventLog.DumpInfo)
* [Функция Событие / Event](topic:.Custom.BasClasses.Logging.EventLog.Event)
* [Процедура EndEvent](topic:.Custom.BasClasses.Logging.EventLog.EndEvent)
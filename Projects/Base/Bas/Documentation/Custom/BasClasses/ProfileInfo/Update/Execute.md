---
Link: Bas.ProfileInfo.Update.@Execute
---

[Подсистема обновления](topic:.Custom.ПодсистемаОбновленияИБ) :
[Класс обновление](Default)

# Процедура Execute

## Описание

    proc Execute (aVersionFromBase :Numeric);

## Параметры

**aVersionFromBase** - значение версии проекта, сохраненное ранее в информационной базе.

## Назначение

Процедура обновления информационной базы.

Если класс обновления будет зарегистрирован в [утилите восстановления ИБ](topic:.Custom.BasClasses.Recovery.MassUpdates.Class.Default),
процедура должна корректно обрабатывать значение версии '-1' (запуск без учета версии проекта).

## Пример

-  Для случая множественной обработки версий:

        proc Execute (aVersionFromBase :Numeric);
          if    aVersionFromBase < 5.001 then
            -- промежуточная обработка
          elsif aVersionFromBase < 5.010 then
            -- промежуточная обработка
          elsif aVersionFromBase < ExecuteVersion then
            -- обработка по версии конвертера
          end;
        end;

-  Для однократной обработки использование переменной "aVersionFromBase" не обязательно.

        proc Execute (aVersionFromBase :Numeric);
          -- обработка по версии конвертера
        end;
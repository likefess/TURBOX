---
Link: .Recovery.MassUpdates.Method.@ProcessingMethod
---

[Recovery]  (topic:.Custom.BasClasses.Recovery.Default) :
[Group]     (topic:.Custom.BasClasses.Recovery.Group.Default) :
[Method]    (topic:.Custom.BasClasses.Recovery.Method.Default) :
[MassUpdate](topic:.Custom.BasClasses.Recovery.MassUpdates.Default) :
[Method]    (topic:.Custom.BasClasses.Recovery.MassUpdates.Method.Default)

# Поле ProcessingMethod

## Описание

    ProcessingMethod :MethodInfo;

## Назначение

Ссылка на [ИнфМетода / MethodInfo](topic:kernel.Программирование.Классы.Объекты.Инф.ИнфМетода.Default).

Форматы поддерживаемых методов:

    proc Процедура0;
    end;

    proc Процедура1(aParams :Logical);
    end;

    proc Процедура2(аНемедленно    :Logical = False;
                    аПринудительно :Logical = False);
    end;

Вызов методов происходит со следующими параметрами:

    Процедура0();

    Процедура1(True);

    Процедура2(True, False);
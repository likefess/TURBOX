﻿---
Link: Bas.ProfileInfo.Update.@UpdateType
---

[Подсистема обновления](topic:.Custom.ПодсистемаОбновленияИБ) :
[Класс обновление](Default)

# Поле UpdateType

## Описание

    UpdateType :TUpdateType;

## Назначение

Тип (очередь) обновления информационной базы.

## Описание

Перечислимый тип TUpdateType включает следующие константы:

- **updLoading** - обработка на этапе загрузки справочников в информационную базу.

  Рекомендуется использовать только для загрузки справочников и критических методов, обработка которых необходима до групповой загрузки справочников.

- **updConversion** - обработка на этапе общего обновления информационной базы.
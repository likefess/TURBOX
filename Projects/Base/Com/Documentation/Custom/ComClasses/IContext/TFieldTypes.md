---
Link: .IContext.@TFieldTypes
---

[IContext](Default)

# Перечислимый тип TFieldTypes

## Описание

    type TFieldTypes = (
      ftUndefined     = 0
     ,ftCommon        = 1
     ,ftTable         = 2
     ,ftCardfile      = 3
     ,ftSubCardfile   = 4
    )

## Назначение

Используется для обозначения типа области, в которой лежит ячейка.

Перечислимый тип TFieldTypes включает следующие константы:

**ftUndefined** - тип области не определен;

**ftCommon** - обычный фрейм;

**ftTable** - таблица;

**ftCardfile** - картотека;

**ftSubCardfile** - подтаблица картотеки.

Константы, определенные в данном типе, используются в поле [FieldType](FieldType).
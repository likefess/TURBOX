# Тип TComparer

## Описание

    type TComparer = func(aSender :ITable; aIndex1, aIndex2 :Integer) :Integer;

## Параметры

**aSender** - таблица, для которой происходит вызов.

**aIndex1, aIndex2** - индексы сравниваемых строк.

## Назначение

Функция сравнения строк таблицы для метода [SortBy класса ITable](topic:.Custom.ComClasses.Ctrl.ITable.SortBy).

Функция возвращает:
- 0 - если строки равнозначны (порядок строк не важен);
- 1 - если строка aIndex2 идёт перед строкой aIndex1;
- -1 - если строка aIndex2 идёт после строки aIndex1.

Функции этого типа создаются в методах
[CompareByColumns](topic:.Custom.ComClasses.Ctrl.ITable.CompareByColumns) и
[CompareByFields](topic:.Custom.ComClasses.Ctrl.ITable.CompareByFields).

<!--Аналогично для методов класса Ctrl.IFrame:
[SortBy](topic:.Custom.ComClasses.Ctrl.IFrame.SortBy),
[CompareByColumns](topic:.Custom.ComClasses.Ctrl.IFrame.CompareByColumns)
и [CompareByFields](topic:.Custom.ComClasses.Ctrl.IFrame.CompareByFields).-->

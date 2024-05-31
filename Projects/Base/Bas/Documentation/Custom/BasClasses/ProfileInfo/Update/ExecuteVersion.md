﻿---
Link: Bas.ProfileInfo.Update.@ExecuteVersion
---

[Подсистема обновления](topic:.Custom.ПодсистемаОбновленияИБ) :
[Класс обновление](Default)

# Поле ExecuteVersion

## Описание

    ExecuteVersion :Numeric;

## Назначение

Номер версии класса обновления.

## Описание

Допустимый диапазон значений '5.001' .. '5.999'.

Значение не должно превышать [номера версии](topic:kernel.Программирование.Проекты.РедакторПроекта.СвойстваПроекта) выбранного [проекта](ProjectName)

Также допускается значение '-1'. В этом случае, обработка класса будет запущена только при обновлении версий в других классах обновления.
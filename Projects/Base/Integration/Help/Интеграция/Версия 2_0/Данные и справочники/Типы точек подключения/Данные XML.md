﻿---
Keywords: Данные XML, XMLData
---


# Тип точки подключения Данные XML Версия2

**Назначение:** для загрузки/выгрузки данных в формате XML

![](topic:.AddFiles.Screenshot_11640.jpg)

* Название пользователь может отредактировать для своего удобства;
* Программный класс обработки задает правило работы с данными.


**Параметры:**

* *CreateIntends* - форматирование XML с отступами;
* *FileName* - наименование файла (путь к файлу).

При автоматическом формировании Структуры объекта в таблицы выносятся узлы  XML, в поля выносятся текстовые узлы и атрибуты.

![](topic:.AddFiles.Screenshot_11641.jpg)



Дескрипторы полей и таблиц в структуре объекта, описывающих Данные XML:
* для таблиц - имена узлов в XML документе;
* дескрипторы полей - когда узел XML содержит внутри себя информацию, то он является таблицей и полем одновременно.
Для доступа к содержимому такого узла в списке полей объектов дескриптор такого поля должен иметь следующий вид: @#Text





**Пример [Точки подключения](topic:.Интеграция.Версия 2_0.Данные и справочники.Точка подключения) с Типом точки подключения Данные XML Версия2:**

В блоке Параметры  по умолчанию значений нет, необходимо заполнить обязательные параметры в соответствии со значениями конкретной настройки обмена.


![](topic:.AddFiles.Screenshot_11642.jpg)
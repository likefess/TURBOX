---
Keywords: ChangeLog Integration, Новенькое, Integration
---

#Новенькое проекта Integration

##11.04.2023
<!--TXAPP-7447-->
В работе менеджера связанных записей `Rec.Service.TableStructManager` произведена параметризация,
что позволяет использовать один класс менеджера для разных классов записей:

1. `TableStructManager.StoredDocIDFieldName` - имя поля строкового поля основной записи, в котором содержится идентификатор записи.
Поле используется при дублировании для копирования зависимых записей дублируемой записи.

2. `IStruct_RecordLink.Record.RecordClass` - класс зависимых записей.

3. `IStruct_RecordLink.RecordOwner.FieldName` - имя поля зависимого класса записей, в котором содержится ссылка на основную запись.

4. `IStruct_RecordLink.SortIndex.FieldName` - имя поля зависимого класса записей, в котором содержится порядковый номер записи при отображении в подтаблице.

5. `IStruct_RecordLink.SortIndex.FieldName` - имя поля зависимого класса записей, в котором отмечаются удаленные вручную записи.

##10.03.2023
<!--TXAPP-5906 -->
Изменен порядок создания объектов [IProcessor](topic:.Custom.Integration.IProcessor.IProcessor) на основе настроек записи `Rec.DataProcessing`

* Для создания объектов в класс `Rec.DataProcessing` добавлен метод `ReadObject`,
который считывает настройки записи и создает объект с заполненными параметрами.

* Определение метода `FillParameters` в наследниках [IProcessor](topic:.Custom.Integration.IProcessor.IProcessor)
больше не требуется. Метод объявлен устаревшим и будет удален в будущих версиях.

##05.04.2023
<!--TXAPP-7490-->
В базовые классы [ICursor](topic:ComData.Custom.ComData.ICursor.Default), [IProcessor](topic:.Custom.Integration.IProcessor.IProcessor) и [IBaseConvert](topic:.Custom.Integration.FieldsConvertor.IBaseConverter) добавлено поле

    inclass public
      var HelpContext :String;

При создании наследников этих классов значение в поле можно переопределить
ссылкой на тему помощи. Указанная тема помощи будет использоваться в форме настройки
точек подключения, настроек обработки и правил преобразования полей.

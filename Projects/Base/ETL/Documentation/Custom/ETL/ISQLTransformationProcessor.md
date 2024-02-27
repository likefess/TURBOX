---
Keywords: ISQLTransformationProcessor
---


#Класс ISQLTransformationProcessor

Интерфейс ISQLTransformationProcessor является наследником базового интерфейса [ITransformationProcessor](ITransformationProcessor "Процессор ITransformationProcessor")
и служит для преобразования данных в БД при помощи SQL-скрипта.
###Примечание
Для интерфейса определён атрибут **#Attr TransformationProcessor = True** для указания принадлежности процессора к типу "преобразование".


##Свойства

 **aScript** (String) - строка для SQL скрипта;


##Методы
Используются все методы, определенные в интерфейсе [ITransformationProcessor](ITransformationProcessor "Интерфейс ITransformationProcessor").


##Атрибуты свойств
*  **UserName** - для отображения названия свойства на форме, указанного в атрибуте;
*  **MultiLine = True** - при отображении свойства на форме, к элементу отображения будет применён режим отрисовки длинного текста (Wrap = True).

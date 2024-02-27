---
Keywords: IMappingProcessor
---

***    ---------------------------Версия 2.00------------------------***
#Класс IMappingProcessor - процессор соответствия полей

Интерфейс IMappingProcessor является наследником базового интерфейса IProcessor и служит для добавления/копирования/обновления данных из источника в приёмник
с настроенным соответствием полей.


##Свойства

*  **aSource**           (Rec.EndPoint) - точка подключения источника;
*  **aReceiver**         (Rec.EndPoint) - точка подключения приёмника;
*  **aProcessorMapping** (Rec.ProcessorMapping) - соответствие полей.


##Методы
Используются все методы, определенные в интерфейсе [IProcessor](IProcessor "Интерфейс IProcessor").
Добавлены методы:
* **EndPointEditSetup(var aEdit:Com.Ctrl.IEdit)** - позволяет настроить параметры контрола на форме, здесь задаёт фильтр для версии точки подключения.
* **ProcessorMappingEditSetup(var aEdit:Com.Ctrl.IEdit)** - позволяет настроить параметры контрола на форме, здесь задаёт фильтр для соответствия полей.



##Атрибуты свойств
Для свойств используются атрибуты:
*  **UserName** - для отображения названия свойства на форме, указанного в атрибуте;
*  **OnEditSetup = 'EndPointEditSetup'** - к свойству применяется метод задания параметров IEdit на форме, например, **EndPointEditSetup** для фильтрации точек подключения (источника и приёмника) по версии.

## Наследники

* [ETL.Service.IMappingProcLoad](topic:ETL.Custom.ETL.IMappingProcLoad "Процессор ETL.IMappingProcLoad")
* [ETL.Service.IMappingProcExtract](topic:ETL.Custom.ETL.IMappingProcExtract "Процессор ETL.IMappingProcExtract")
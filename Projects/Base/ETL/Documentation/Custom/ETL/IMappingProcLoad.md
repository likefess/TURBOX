---
Keywords: IMappingProcLoad
---

#Класс IMappingProcLoad - процессор соответствия полей (загрузка)


Интерфейс IMappingProcLoad является наследником интерфейса [**IMappingProcessor**](topic:Integration.Custom.Integration.IProcessor.IMappingProcessor)
и служит для загрузки данных в приёмник из хранилища ETL (заранее настроенная точка подключения).
###Примечание
Для интерфейса определён атрибут **#Attr LoadingProcessor = True** для указания принадлежности процессора к типу "загрузка".

##Методы
Используются все методы, определенные в интерфейсе [**IMappingProcessor**](topic:Integration.Custom.Integration.IProcessor.IMappingProcessor).

## Свойства
Используются все свойства, определенные в интерфейсе [**IMappingProcessor**](topic:Integration.Custom.Integration.IProcessor.IMappingProcessor)
###Примечание
Свойство **aSource** (Rec.EndPoint) предопределено как точка подключения к хранилищу ETL.
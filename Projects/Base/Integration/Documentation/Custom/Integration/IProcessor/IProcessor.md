﻿---
Keywords: IProcessor
---

***    ---------------------------Версия 2.00------------------------***
#Класс IProcessor

Интерфейс IProcessor является базовым классом для интерфейсов процессоров и служит для унификации при
работе с различными наследниками процессоров.


##Методы

 * **Run** - прототип метода для запуска процессора. Реализуется в наследниках;

 * **FillParameters(Parameters :Com.ISubtable)** - прототип метода для заполнения объекта параметрами из подтаблицы **Parameters**. Реализуется в наследниках.
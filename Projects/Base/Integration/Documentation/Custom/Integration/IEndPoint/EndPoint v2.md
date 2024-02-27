---
Keywords: IEndPoint2
---

***    ---------------------------Версия 2.00------------------------***


#Класс IEndPoint2



Интерфейс IEndPoint2 является наследником интерфейса Service.InterfaceBase
и расширяет его возможности для унификации при работе с различными точками подключений - наследниками [ICursor](topic:ComData.Custom.ComData.ICursor.Default).

------------

Доступны следующие типы точек подключения (Uni-классы):


* [Таблица CSV](topic:.Custom.Integration.IEndPoint.UniCSVTable2);
* [Данные XML](topic:.Custom.Integration.IEndPoint.UniXMLData2)
* [Клиент-банк](topic:.Custom.Integration.IEndPoint.UniClientBankTable2);
* [Таблица SQL](topic:ComData.Custom.ComData.SQLTable);
* [Таблица Turbo](topic:.Custom.Integration.IEndPoint.UniTBRecord);
* [Форма Turbo](topic:.Custom.Integration.IEndPoint.UniTBFrm).

## Методы


* **proc AddComponents(aObjectStruct: Rec.ObjectStruct)** - добавление полей компонента с учетом структуры **aObjectStruct**.
Определяется в Uni-классах.



* **proc GetStructure** - получает список таблиц и полей объекта. Используется для создания записи "Списка Структуры объектов". Определяется в Uni-классах.

* **proc FillStruct(aObjectStruct: Rec.ObjectStruct)** - заполняет структуру объекта  **aObjectStruct** полями и таблицами (FTables, FFields).

* **proc FillParameters(aEndpoint: Rec.EndPoint)** - заполняет объект параметрами из указанной точки
 подключения **aEndpoint**.

* **proc GetCondition(Filter: Rec.DataFilter)** - позволяет задать фильтр **Filter** для данных в формате системы Турбо.
Определяется в Uni-классах.

* **proc GetRawFields** - получает все исходные таблицы и поля объекта и определяет поля в наследуемом компоненте.
Используется для просмотра исходных данных в
 [DataSourceViewer](topic:ComData.Custom.ComData.DataSourceView.DataSourceView). Определяется в Uni-классах.











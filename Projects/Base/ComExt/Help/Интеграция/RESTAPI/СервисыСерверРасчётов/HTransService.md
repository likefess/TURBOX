---
Keywords: HTransService, Сервис полупроводок
---

<!---#HTransService--->
#Сервис полупроводок

##Описание

Сервис служит для загрузки полупроводок. Поддерживается только режим чтения.


##Вызовы

- GET "/" - возвращает список полупроводок с заданными параметрами; Параметры: [**accounts**] (topic:kernel.Платформа.Инструменты.Условия.УсловиеОтбораСчетов) - фильтр по счетам (обязательный),
    [**filter**](topic:kernel.Платформа.Инструменты.Условия.УсловиеОтбораПараметров) - [условие отбора по аналитическим параметрам], **dateFrom** - начальная дата периода отбора, **dateTo** - конечная дата периода отбора;

- GET "getStructure/" - Возвращает структуру полей указанной полупроводки с заданными параметрами с сервера расчетов.


##Адрес

**Базовый url**: /xcom/api/htrans

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl/{Parameters}

Пример (получение списка полупроводок): http://175.213.98.1:81/my_ERP_Database/api/xcom/htrans/?accounts=Счёт12:Обычный&dateFrom=1.1.2019&dateTo=24.05.2023


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/htrans

или

GET http://ServerName:Port/InfobaseSelector}/api/xcom/htrans/*
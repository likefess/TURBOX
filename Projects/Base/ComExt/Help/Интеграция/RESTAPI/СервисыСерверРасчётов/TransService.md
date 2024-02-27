---
Keywords: TransService, Сервис проводок
---

<!---#TransService --->
#Сервис проводок

##Описание

Сервис служит для загрузки проводок. Поддерживается только режим чтения.


##Вызовы

- GET "/" - возвращает список проводок с заданными параметрами; Параметры: [**accounts**] (topic:kernel.Платформа.Инструменты.Условия.УсловиеОтбораСчетов) - фильтр по счетам (обязательный),
    [**filter**](topic:kernel.Платформа.Инструменты.Условия.УсловиеОтбораПараметров) - [условие отбора по аналитическим параметрам], **dateFrom** - начальная дата периода отбора, **dateTo** - конечная дата периода отбора;

- GET "getStructure/" - Возвращает структуру полей указанной проводки с заданными параметрами с сервера расчетов.


##Адрес

**Базовый url**: /xcom/api/trans

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl/{Parameters}

Пример (получение списка проводок): http://175.213.98.1:81/my_ERP_Database/api/xcom/trans/?accounts=Счёт12:Обычный&dateFrom=1.1.2019&dateTo=24.05.2023


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/trans

или

GET http://ServerName:Port/{InfobaseSelector}/api/xcom/trans/*
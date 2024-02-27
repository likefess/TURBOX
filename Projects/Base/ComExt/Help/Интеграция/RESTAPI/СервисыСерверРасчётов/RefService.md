---
Keywords: RefService, Сервис справочников
---

<!---#RefService--->
#Сервис справочников

##Описание

Сервис служит для получения данных из справочников. Поддерживается только режим чтения.


##Вызовы
- GET "/" - возвращает список справочников (наследники класса Sign);

- GET "/{RefName}" - список записей справочника {RefName};

- GET "/{RefName}/{Name}" - возвращает все поля одной записи по идентификатору {Name} из справочника {RefName};

- GET  "getStructure/{RefName}" - возвращает структуру справочника {RefName}.


##Адрес

**Базовый url**: /xcom/api/refs

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl

Пример (получение списка справочников): http://175.213.98.1:81/my_ERP_Database/api/xcom/refs/


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/refs

или

GET http://ServerName:Port/{InfobaseSelector}/api/xcom/refs/*
---
Keywords: AccService, Сервис счетов
---

<!---#AccService --->
#Сервис счетов

##Описание

Сервис служит для загрузки счетов. Поддерживается только режим чтения.


##Вызовы

- GET "/" - возвращает список счетов.


##Адрес

**Базовый url**: /xcom/api/accounts

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl

Пример (получение списка счетов): http://175.213.98.1:81/my_ERP_Database/api/xcom/accounts/


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/accounts

или

GET http://ServerName:Port/{InfobaseSelector}/api/xcom/accounts/*





---
Keywords: RESTService, Сервис документов
---

#Сервис документов
<!---#RESTService--->

##Описание

Сервис служит для работы с документами (наследники Com.Rec.IRecord).
Поддерживается чтение, запись (создание и редактирование) и удаление документов.


##Вызовы

- GET "/" - возвращает список классов наследников Com.Rec.IRecord;

- GET "/{ClassName}" - список записей класса записи ClassName;

- POST "/{ClassName}" - создает запись, переданную в теле запросе;

- GET "/{ClassName}/{docId}" - возвращает одну запись по идентификатору {docId};

- DELETE "/{ClassName}/{docId}" - удаляет запись по идентификатору {docId};

- PUT "/{ClassName}/{docId}" - обновляет запись {docId} значениями полей, переданными в теле запроса;

- GET "/getStructure/{ClassName}" - возвращает информацию о структуре указанного наследника Com.Rec.IRecord.



##Адрес

**Базовый url**: /xcom/api/data

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl

Пример (получение списка классов): http://175.213.98.1:81/my_ERP_Database/api/xcom/data/


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/data

или

GET http://ServerName:Port/{InfobaseSelector}/api/xcom/data/*
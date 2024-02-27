# Разработка веб-сервисов на основе ComExt.JSONSvc

Проект **ComExt** содержит инструмент JSONSvc для создания веб-сервисов, использующих при взаимодействии JSON-объекты.

Особенности веб-сервисов на основе JSONSvc:

* URL веб-сервиса состоит из базового URL веб-сервера Турбо, определителя сервиса (по умолчанию **/api/%имя проекта%/%имя класса обработчика%**) и имени метода.
* При обращении к сервису используется HTTP метод POST.
* Аутентификация осуществляется по сессионному ключу, который передается в HTTP заголовке **SessionId**.
* Любые текстовые данные передаются в кодировке UTF8.
* Передаваемые в веб-сервис данные должны быть корректным JSON-объектом (**Content-Type="application/json"**).
* Возвращаемое значение должно быть корректным JSON-объектом или простым значением.
* При успешном обращении веб-сервис возвращает HTTP код 200.
* Если при обращении произошла ошибка веб-сервис возвращает HTTP код 400 "Bad Request" и JSON-объект, в поле **error** которого передается текст ошибки из Турбо.

Порядок реализации веб-сервиса на основе JSONSvc:

1. Создать класс обработчик веб-сервиса.
2. Реализовать методы веб-сервиса как публичные методы класса обработчика.
3. Включить класс обработчик в процедуру инициализации веб-сервера Турбо.

## Создание класса обработчика

Класс обработчик веб-сервиса создается как наследник класса **ComExt.JSONSvc.Service**. Класс должен быть включен для выполнения на сервере процедур.

Класс обработчик содержит следующие свойства:

* **Project (String)** - имя проекта в определителе сервиса. По умолчанию заполняется именем проекта, в котором находится класс обработчик.
* **Name (String)** - имя класса обработчика в определителе сервиса. По умолчанию заполняется собственным именем класса обработчика.
* **Anonymous (Logical)** - если свойство установлено, то сервис не будет требовать аутентификацию пользователя. По умолчанию **False**.

## Методы веб-сервиса

Методы веб-сервиса реализуются как публичные методы класса обработчика. Методы могут содержать возвращаемое значение (функции) или не содержать (процедуры).

Поддерживаются следующие типы для параметров и возвращаемого значения методов:

* Строка (varString).
* 4-байтовое целое (varInt).
* Число с плавающей точкой (varNumeric).
* Логическое значение (varLogical).
* ДатаВремя (varDate).
* Вариант (varVariant).
* Объект компонентного класса с определением JSON-структуры (ComData.JSON.List или его наследник).

При обращении к методу через веб-сервис должен передаваться JSON-объект, в котором имена полей объекта соответствуют именам параметров, а значения - значениям параметров. Инструмент JSONSvc автоматически осуществляет преобразование типов.

## Атрибуты методов

* **Method (String)** - позволяет задать один из применяемых HTTP-методов: 'POST', 'GET', 'PUT' и 'DELETE'. По умолчанию - 'POST';
* **Path (String)** - описание пути (конечной точки в соответствии с терминологией спецификации OpenAPI), например, '{ClassName}/{docId}';
* **ResponseCode (Integer)** - код ответа HTTP. Указывается в случае, если ответ отличается от стандартного 200 (OK), например, 201 (Created) или 204 (No Content);
* **ResponseDescription (String)** - описание возвращаемого методом результата;
* **RequestBody (String)** - объект с определением JSON-структуры тела запроса (Body);
* **Help** - описание назначения метода и используемых параметров.

Атрибуты для методов используются в том числе и для автоматического создания спецификации [OpenAPI 3.0]
(https://support.smartbear.com/swaggerhub/docs/tutorials/openapi-3-tutorial.html) для REST-сервисов.

### Примечание

* Атрибут **Path** является обязательным.
* Атрибут **Help** является встроенным в Турбо и не требует указания "#Attr".

###Пример применения атрибутов

        #Attr Path = '{ClassName}';
        #Attr ResponseCode = 201;
        #Attr ResponseDescription = 'Возвращает поля созданного документа в виде Data.RESTRecord_Once';
        #Attr RequestBody =
          `{"fields": [
               {
                 "name": "name",
                 "value": "New variable from OpenAPI"
               },
               {
                 "name": "paramtype",
                 "value": 2
               }
              ]
          }`;
        #Help `Создает документ по recordClass с заданными полями и подтаблицами`;
        func createDoc(ClassName : String; fields : Data.RESTField; subtables : Data.RESTSubtable) : Data.RESTRecord_Once;
          Result = createDocumentByClassName(ClassName, fields, subtables);
        end;


## Публикация веб-сервиса на веб-сервере Турбо

Для публикации веб-сервиса на веб-сервере Турбо необходимо в проекте создать расширение класса Net.WebSrv и в расширении процедуры **Init** опубликовать сервис при помощи процедуры **AddRuleObj**. Параметры процедуры:

* Пространство URL сервиса. Получается вызовом функции **getServiceURL** класса обработчика и добавлением символа '\*'. Например, "api/xcom/dataservice/*".
* Экземпляр сервера JSONSvc на основе созданного класса-обработчика. Получается вызовом **ComExt.JSONSvc.Server.CreateWith**, где в качестве параметра передается новый экземпляр объекта класса обработчика. 

## Пример реализации класса обработчика

Формальное описание веб-сервиса:

* URL пространство веб-сервиса "api/xcom/authservice/*"
* Веб-сервис содержит два метода:
    * **getSessionKey** не имеет параметров, возвращает строку
    * **verifyCredentials** в качестве параметров имеет два строковых значения, возвращает логическое значение

Параметры HTTP запроса к методу **verifyCredentials**

* URL = http://**server**:**port**/api/xcom/authservice/verifyCredentials, где **server** и **port** - адрес и порт, на которых настроен и запущен веб-сервер Турбо.
* Метод POST
* Заголовки: SessionId,Content-Type="application/json"
* Данные запроса: JSON-объект **{"login": "Пользователь","password":"p@ssw0rd"}**
* Ожидаемый ответ: строка **True** или **False** 

**AuthService.cod**

    class inherited JSONSvc.Service "REST Support AuthService";

    import SYS classes Errors, Utils, Strings, Vocabulary;
    import Com classes Lib;

    inclass public

      #Override;
      var Project : String = 'xcom';

    inobject public
    
      func getSessionKey : String;
        Result = SessionInfo.SessionKey;
      end;

      func verifyCredentials(login : String; password : String) : Logical;
        Result = UserInfo.Verify(login,password) <> nil;
      end;
    
    end

**extWebSrv.cod**

    extends  Net.WebSrv;

    inclass private

      #Override;
      proc Init;
        extended Init;

      AddRuleObj(AuthService.getServiceURL+'*', JSONSvc.Server.CreateWith(AuthService.Create));
    end;

    end


## Использование HTTP-метода OPTIONS /*

HTTP-метод OPTIONS представляет собой запрос информации о параметрах соединения с веб-сервисом или его конкретным ресурсом, доступным
в цепочке запросов/ответов, идентифицируемой запрашиваемым URI (Request-URI). При этом не производится никаких действий над ресурсом
и не инициируется его загрузка. Клиент может указать особый URL для обработки метода OPTIONS, или * (звёздочку) чтобы указать весь веб-сервис
целиком.
Ответ включает в себя заголовок "Allow" со списком поддерживаемых методов, согласно спецификации [OpenAPI 3.0]
(https://support.smartbear.com/swaggerhub/docs/tutorials/openapi-3-tutorial.html)





### Пример ответа веб-сервиса на операцию OPTIONS

Для получения информации по всему веб-сервису, необходимо отправить запрос

OPTIONS http://ServerName:Port/api/xcom/serviceName

или

GET http://ServerName:Port/api/xcom/serviceName/*

Для примера рассмотрим ответ веб-сервиса "RESTService" на запрос:

OPTIONS http://ServerName:Port/api/xcom/data/{ClassName}/{docId}

или

GET http://ServerName:Port/api/xcom/data/{ClassName}/{docId}/*

####Получаемый заголовок (Response header):

**Content-Type** : application/json; charset=utf-8

**Allow**        : GET,DELETE,PUT

...



####Получаемое тело ответа (Response body):

    {
    "openapi": "3.0.3",
    "info": {
        "version": "1",
        "title": "Turbo OpenAPI v3. 15.12.2021 15:38:09",
        "description": "Для авторизации необходимо получить API ключ (sessionID) по адресу http://127.0.0.1:81/api/xcom/AuthService с телом запроса {`user`: `user1`, `password`: `pass1`}",
        "license": {
            "name": "Turbo"
        }
    },
    "servers": [
        {
            "url": "http://127.0.0.1:81/api/xcom/data",
            "description": "RESTService"
        }
    ],
    "paths": {
        "/{ClassName}/{docId}": {
            "get": {
                "summary": "Позволяет получить все поля документа по docId",
                "operationId": "/{ClassName}/{docId}",
                "tags": [
                    "/{ClassName}/{docId}"
                ],
                "parameters": [
                    {
                        "name": "ClassName",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    },
                    {
                        "name": "docId",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    }
                ],
                "responses": {
                    "200": {
                        "description": "Возвращает поля документа в виде Data.RESTRecord_Once"
                    }
                }
            },
            "delete": {
                "summary": "Удаляет документ по docId",
                "operationId": "/{ClassName}/{docId}",
                "tags": [
                    "/{ClassName}/{docId}"
                ],
                "parameters": [
                    {
                        "name": "ClassName",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    },
                    {
                        "name": "docId",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    }
                ],
                "responses": {
                    "204": {
                        "description": "No Content"
                    }
                }
            },
            "put": {
                "summary": "Редактирует документ по recordClass и docId",
                "operationId": "/{ClassName}/{docId}",
                "tags": [
                    "/{ClassName}/{docId}"
                ],
                "parameters": [
                    {
                        "name": "ClassName",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    },
                    {
                        "name": "docId",
                        "in": "path",
                        "required": true,
                        "schema": {
                            "type": "string"
                        }
                    }
                ],
                "requestBody": {
                    "content": {
                        "application/json": {
                            "schema": {
                                "type": "object"
                            },
                            "example": {
                                "revision": "06.12.2021 10:09:20.000",
                                "fields": [
                                    {
                                        "name": "Name",
                                        "internalName": "Name",
                                        "caption": "Название",
                                        "valueType": 1,
                                        "value": "Variable from OpenAPI"
                                    },
                                    {
                                        "name": "ParamType",
                                        "internalName": "ParamType",
                                        "caption": "Тип",
                                        "valueType": 2,
                                        "value": 2
                                    }
                                ]
                            }
                        }
                    },
                    "required": true
                },
                "responses": {
                    "200": {
                        "description": "Редактирует документ по recordClass и docId"
                    }
                }
            }
        }
    },
    "components": {
        "securitySchemes": {
            "ApiKeyAuth": {
                "type": "apiKey",
                "name": "sessionID",
                "in": "header"
            }
        }
    },
    "security": [
        {
            "ApiKeyAuth": []
        }
      ]
    }


В теле ответа имеются следующие объекты:

* **openapi** - указывает версию спецификации OpenAPI для проверки;

* **info** - содержит основную информацию про API, включая заголовок, описание, версию, ссылку на лицензию, ссылку на условия обслуживания и контактную информацию; 

* **servers** - указывается базовый путь, используемый в ваших запросах API. Базовый путь - это часть URL, которая находится перед ресурсом (конечной точкой);

* **paths** - перечисление путей (конечных точек), методов, доступных для данного ресурса. Для каждого метода выводится информация о его параметрах, включая места их размещения (например, в query, path и др.),
а также значения по умолчанию, примеры создания тела запроса (requestBody), возможные ответы (responses). В данном случае присутствует один путь "/{ClassName}/{docId}" и 3 метода - get, delete, put;

* **security** - выбор схемы безопасности. Для данного сервиса используется метод авторизации через API ключ, который задаётся обязательным параметром *sessionID* в заголовке запросов;

* **components** - для хранения определения для различных объектов, в данном случае - для схемы безопасности.





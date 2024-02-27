<link rel=stylesheet href="topic:style.css" type="text/css">

# E Catalog Laptops Flow (automatic download)

## Описание

Поток, получающий товары с сайта **e-katalog.ru** в формате **json**

## Параметры запроса

* *http-outbound-url* - путь по которому производится запрос: https://www.e-katalog.ru/list/{catalogId}/{page}
* *http-outbound-http-method* - поддерживаемый тип запроса источника

## Ответ потока

* *productName* - название продукта на сервисе e-katalog.ru. Тип - строка.
* *description* - краткое описание продукта на сервисе e-katalog.ru. Тип - строка.
* *price* - диапазон цен на продукт на сервисе e-katalog.ru. Тип - строка.

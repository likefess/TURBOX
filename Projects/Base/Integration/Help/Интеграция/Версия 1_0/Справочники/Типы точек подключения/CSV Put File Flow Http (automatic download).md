<link rel=stylesheet href="topic:style.css" type="text/css">

# CSV Put File Flow Http (automatic download)

## Описание

Поток, записывающий информацию в **CSV-файл (Http)**

## Параметры

* *uploadedFileName* - наименование файла для записи
* *separator* - символ разделитель между записями в csv-файле
* *fileEncode* - кодировка файла
* *http-outbound-url* - путь по которому производится запрос
* *http-outbound-http-method* - поддерживаемый тип запроса источника

## Ответ потока

* В случае успешной записи будет возвращен полный путь к файлу в виде строки.
* В случае ошибки вернется объект ошибки

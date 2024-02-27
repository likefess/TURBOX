<link rel=stylesheet href="topic:style.css" type="text/css">

# FNS flow (automatic download)

## Описание

Поток для получения информации с сайта https://api-fns.ru/

## Параметры

* *http-outbound-url* - путь, по которому производится запрос (по умолчанию https://api-fns.ru/api/egr?req={inn}&key={key}), где вместо {key} требуется указать ключ, полученный при регистрации на https://api-fns.ru/
* *http-outbound-http-method* - поддерживаемый тип запрос источника

Подробнее об использовании данного потока см. [Руководство по настройке взаимодействия с ФНС](Topic:Integration.Интеграция.Версия 1_0.О системе.Руководство по настройке взаимодействия с ФНС)
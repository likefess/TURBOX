# Mail Sender Flow (automatic download)

## Описание

Поток, отправляющий письма с почтового сервера.

## Параметры

* *mail-outbound-host* - адрес почтового сервера
* *mail-outbound-port* - порт почтового сервера
* *mail-outbound-username* - имя пользователя
* *mail-outbound-password* - пароль пользователя
* *mail-outbound-protocol* - почтовый протокол
* *mail-outbound-auth* - булевый параметр - осуществлять дополнительное шифрование пакетов или нет (если имеется поддержка у сервера)
* *mail-outbound-starttls* - включена ли авторизация клиента или нет
* *mail-outbound-smtp-ssl-trust* - доверенный хост получения сертификатов
* *mail-outbound-debug* - системная настройка логирования действий мейлера
* *mail-outbound-ssl-socket-factory* - фабрика SSL
* *mail-outbound-ssl-socket-port* - порт SSL

## Ответ потока

При успешном выполнении запрос вернет пустой ответ.

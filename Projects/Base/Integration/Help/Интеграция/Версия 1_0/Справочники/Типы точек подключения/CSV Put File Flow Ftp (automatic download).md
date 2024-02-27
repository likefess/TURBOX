<link rel=stylesheet href="topic:style.css" type="text/css">

# CSV Put File Flow Ftp (automatic download)

Поток, записывающий информацию в **CSV-файл (SFtp)**

## Параметры

* *host* - хост sftp-сервера
* *port* - порт sftp-сервера
* *user* - логин
* *password* - пароль
* *allowUnknownKeys* - разрешить доступ с неизвестными ключами
* *separator* - символ разделитель между записями в csv-файле
* *fileEncode* - кодировка файла
* *sftp-out-gt-mode* - операция при наличии файла в директории. Варианты значения см. в [Режимы работы FTP(SFTP) Outbound Gateway](Topic:Integration.Интеграция.Версия 1_0.Справочники.Типы точек подключения.Режимы работы FTP(SFTP) Outbound Gateway)
* *sftp-out-gt-expression* - полный путь к файлу в формате UNIX-систем (путь необходимо взять в одинарные кавычки, например, '/folder')

## Ответ потока

* В случае успешной записи будет возвращен полный путь к файлу на FTP-сервере в виде строки
* В случае ошибки вернется объект ошибки.

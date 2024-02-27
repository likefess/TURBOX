<link rel=stylesheet href="topic:style.css" type="text/css">

# Режимы работы FTP/SFTP Outbound Gateway

Варианты значений параметра *sftp-out-gt-mode* для типов потоков **CSV Put File Flow Ftp (automatic download)** и **CSV Get File Flow Ftp (automatic download)**

* *APPEND* - добавить данные в существующие файлы. Выполняет close() после добавления.
* *APPEND_NO_FLUSH* - добавить данные в любые ранее существующие файлы. Не выполняет flush() / close() после добавления.
* *FAIL* - вызывает исключение, если файл для записи уже существует.
* *IGNORE* - если файл уже существует, ничего не делать
* *REPLACE* - если файл уже существует, заменяет его
* *REPLACE_IF_MODIFIED* - если файл уже существует, заменить его, только если время последнего изменения отличается. Относится только к локальным файлам.

﻿

---
Keywords: ETL, Назначение системы ETL
---

#Назначение проекта ETL (Extract, Transform, Load)



####Общие положения

Проект ETL служит для пакетной обработки данных и обеспечивает реализацию операций извлечения (extract), преобразования (transform) и загрузки данных (load).

####Хранилище

Хранилище используется для хранения данных, которые могут создаваться в операциях интеграционных пакетов. 

В качестве временного хранилища данных (далее Хранилище) используется отдельная база данных SQL. Хранилище является получателем данных при извлечении, источником и получателем данных в процессах преобразования, и источником данных в процессе загрузки данных.

Данные в Хранилище изолированы в рамках каждого запуска пакета. 


**Организация хранения данных**

Каждый запуск интеграционного пакета создает в Хранилище свой набор физических таблиц, которые соответствуют набору логических таблиц, указанных в настройках интеграционного пакета.

Набор полей, их тип, а также индексирование в создаваемых таблицах определяются настройками интеграционного пакета.


**Просмотр данных**


Модуль ETL предоставляет интерфейс для просмотра данных Хранилища, связанных с конкретным интеграционным пакетом. Пользователь может посмотреть список логических таблиц, которые создались в результате работы пакета, и открыть содержимое выбранной таблицы. 

**Особый тип данных пакета** – переменные, которые могут быть установлены или прочитаны в любой операции пакета.


####Интеграционные пакеты

**Интеграционный пакет** – основной элемент для настройки модуля ETL.

Операции ETL группируются в интеграционные пакеты. Информация о процессе выполнения пакета и ошибки логируются в базе Турбо.

В рамках настройки пакета хранится следующая информация:
* операции модуля ETL, входящие в пакет с указанием связей (порядка выполнения) между операциями;
* структура таблиц Хранилища, задействованных в работе пакета;
* переменные и их тип, задействованные в операциях.

Запуск интеграционного пакета можно выполнить вручную или по расписанию. Для запущенных интеграционных пакетов допускается перезапуск конкретных операций. 


####Операции модуля ETL

**Извлечение (Extract)**

Операция извлечения данных заключается в чтении данных из внешних источников и сохранении результата в таблице Хранилища. Источники данных, с которыми поставляется версия модуля ETL: 

* CSV-файл; 
* XML-файл; 
* файл клиент-банка; 
* таблица SQL базы;
* подключение к данным внешней информационной базы Турбо;
* подключение к справочникам внешней информационной базы Турбо;
* подключение к полупроводкам внешней информационной базы Турбо;
* подключение к проводкам внешней информационной базы Турбо;
* подключение к информационной базе Турбо (загрузка проводок);
* получение данных из записи в Турбо;
* получение данных из формы в Турбо;
* хранилище SQL.

Для работы с внешними источниками данных модуль ETL использует возможности проекта "[Интеграционная шина](topic:Integration.Интеграция.Default)" (Integration). 

**Преобразование (Transform)**

Операция преобразования данных заключается в заполнении таблиц Хранилища на основе данных в других таблицах Хранилища.

Модуль ETL предлагает следующие способы задания алгоритма преобразования:

* в рамках функциональности "Интеграционной шины";
* на процедурном расширении SQL той СУБД, в которой размещено Хранилище.

**Файловые операции**

Для удобства и расширения функциональности модуль ETL предоставляет возможность работы с файловыми операциями:

* удаление;
* запуск;
* копирование;
* перемещение;
* извлечение из архива;
* скан папки.

**Загрузка (Load)**

Операция загрузки данных заключается в чтении данных из Хранилища и сохранении результата в базе Турбо.

####Ограничения


* поддерживаемые СУБД для размещения БД Хранилища: MS SQL, PostgreSQL;
* пользовательский интерфейс для визуального отображения или редактирования процессов реализуется в рамках существующих компонентов;
* пред-, постобработка данных при запуске операций не предусмотрена, но может быть реализована в конкретном проекте за счет расширения классов-обработчиков.



<!--##Общие положения

Модуль ETL создается как отдельный лицевой проект, написанный на языке Турбо.Скрипт. В качестве подпроектов используются только проекты, входящие в продукт «Платформа TurboX».

Модуль ETL реализует операции извлечения (extract), преобразования (transform) и загрузки данных (load).

В качестве временного хранилища данных (далее Хранилище) используется отдельная база SQL. Хранилище является получателем данных при извлечении, источником и получателем данных в процессах преобразования, и источником данных в процессе загрузки данных.

Операции ETL группируются в интеграционные пакеты. Информация о процессе выполнения пакета и ошибки логируются в базе Турбо.

####Ограничения

Для ускорения разработки и уменьшения рисков первая реализация модуля ETL создается в рамках следующих ограничений:

* Инсталляция Турбо в среде под управлением ОС Windows;
* Поддерживаемые СУБД для размещения БД Хранилища: MS SQL, PostreSQL;
* Компоненты для визуального отображения или редактирования процессов модуля ETL не разрабатываются. Пользовательский интерфейс реализуется в рамках существующих компонентов;
* Не содержит встроенного механизма уведомлений о завершении обработки, ошибках и т.п.
Эти ограничения не носят архитектурный характер и могут быть сняты при дальнейшем развитии модуля.

##Интеграционные пакеты

Интеграционный пакет – основной элемент для настройки модуля ETL.

В рамках настройки пакета хранится следующая информация:
* Структура таблиц Хранилища, задействованных в работе пакета;
* Операции модуля ETL, входящие в пакет с указанием связей (порядка выполнения) между операциями;
* Параметры обработки ошибок и логирования при работе пакета.

Запуск интеграционного пакета можно выполнить вручную или по расписанию. Для запущенных интеграционных пакетов допускается перезапуск конкретных операций. 

Данные в Хранилище изолированы в рамках каждого запуска пакета. Модуль ETL позволяет просмотреть данные, которые были созданы в Хранилище в результате запуска пакета. Особый тип данных пакета – переменные, которые могут быть установлены или прочитаны в любой операции пакета.

##Хранилище

Хранилище используется для хранения данных, которые создаются в процессе работы интеграционных пакетов. 

####Организация хранения данных

Каждый запуск интеграционного пакета создает в Хранилище свой набор физических таблиц, которые соответствуют набору логических таблиц, указанных в настройках интеграционного пакета.

Набор полей, их тип, а также индексирование в создаваемых таблицах определяются настройками интеграционного пакета.

Очистка Хранилища осуществляется на периодической основе. Настройки очистки определяются для каждого интеграционного пакета или для группы интеграционных пакетов. Критериями очистки является дата записи о запуске интеграционного пакета (в днях, неделях, месяцах, годах) и успешность/не успешность запуска. В результате работы процедуры определяются все запуски интеграционных пакетов, которые подлежат очистке, после чего удаляются физические таблицы в базе Хранилища, созданные при этих запусках.

####Просмотр и редактирование данных

Модуль ETL предоставляет интерфейс для просмотра и редактирования данных Хранилища, связанных с конкретным запуском интеграционного пакета. Пользователь этого интерфейса может посмотреть список логических таблиц, которые создались в результате работы пакета, и открыть содержимое выбранной таблицы. Содержимое таблицы можно отфильтровать или отсортировать по любому полю таблицы. Допускается редактирования содержимого, измененные значения записей таблиц сохраняются в Хранилище.

##Операции модуля ETL

####Извлечение (Extract)

 Операция извлечения данных заключается в чтении данных из внешних источников и сохранении результата в таблице Хранилища. Источники данных, с которыми поставляется первая версия модуля ETL: CSV-файл, XML-файл, таблица SQL базы.

Для работы с внешними источниками данных модуль ETL использует возможности проекта «Интеграционная шина» (Integration).  

####Преобразование (Transform)

Операция преобразования данных заключается в заполнении таблиц Хранилища на основе данных в других таблиц Хранилища.

Модуль ETL предлагает следующие способы задания алгоритма преобразования:
* На языке Турбо.Скрипт в рамках функциональности «Интеграционная шина»;
* На процедурном расширении SQL той СУБД, в которой размещено Хранилище.

####Загрузка (Load)

Операция загрузки данных заключается в чтении данных из Хранилища и сохранении результата в базе Турбо.

Пред-, постобработка данных при загрузке в первой версии модуля ETL не предусмотрена, но может быть реализована в конкретном проекте за счет расширения класса загрузки.
--> 


<META Name="keywords" Content="ESB">
<link rel=stylesheet href="topic:style.css" type="text/css">

# Руководство по развертыванию ESB
 
**ESB** - инструмент, позволяющий связывать системы, использующие различные протоколы обмена информацией одним потоком, который в свою очередь может выполнять агрегацию, разбивку, поставку, преобразование данных из того или иного источника в удобочитаемом формате.

ESB реализует различные протоколы передачи и получения информации: SOAP, REST, XML RPC, FTP, SFTP, почтовые протоколы (pop3, smtp), работа с очередью (RABBIT MQ, KAFKA), работа с кэшем (REDIS), поддержка стека протоколов TCP/IP, работа с базами данных (Postgress, MS SQL, Oracle, MongoDB) через собственные компоненты.

Подробнее о предустановленных типах потока см. [Типы потоков](Topic:Integration.Интеграция.Версия 1_0.Справочники.Типы точек подключения.Типы потоков)

* [Требования к программному и аппаратному обеспечению][Требования к программному и аппаратному обеспечению]
* [Виртуальная машина шаблон (развертывание на основе ВМ Ubuntu 18.04 LTS)][Виртуальная машина шаблон (развертывание на основе ВМ Ubuntu 18.04 LTS)]
* [Взаимодействие с ФИАС][Взаимодействие с ФИАС]


## Требования к программному и аппаратному обеспечению

ESB может быть развернут как на реальной аппаратуре, так и на виртуальной машине.

* Минимальное количество ядер процессора: 4.
* Рекомендуемое количество ядер: 6.
* Минимальный объем ОЗУ: не менее 8 ГБ. Рекомендуемый объем ОЗУ: 16 Гб.
* Объем свободного дискового пространства: 100 Гб.
* Операционная система: Linux с установленными Docker и docker-compose.
* Рекомендуемая ОС: Ubuntu Server 18.04 LTS





## Виртуальная машина шаблон (развертывание на основе ВМ Ubuntu 18.04 LTS)



Шаблон виртуальной машины будет предоставляться в виде 7zip архива с паролем **Turbo_esb2021**

[http://software.turbosolution.ru:8191/s/StvFKO2g2R9CF3m](http://software.turbosolution.ru:8191/s/StvFKO2g2R9CF3m)

Пароль на скачивание: **ESB**

Для развертывания виртуальной машины необходимо:

- Рабочая станция/Сервер с включенной поддержкой виртуализации:

![](topic:Integration.AddFiles.Screenshot_11173.jpg) ![](topic:Integration.AddFiles.Screenshot_11174.jpg)

- Необходимо установить VMWare Workstation Player: [https://my.vmware.com/en/web/vmware/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/16_0](https://my.vmware.com/en/web/vmware/downloads/info/slug/desktop_end_user_computing/vmware_workstation_player/16_0)
- Запустить VMWare Playerи импортировать ВМ из развернутого архива
- Проверить в свойствах сетевого адаптера что используется соединение типа "Мост" (Bridge)
- Запустить виртуальную машину
- Ввести логин **deploy** с паролем **portal2019**
- Вводим команду **sudo -i** и становимся пользователем **root**
- Выполняем команду **ifconfig -a** и смотрим на определившиеся адаптеры:

![](topic:Integration.AddFiles.Screenshot_11175.jpg)


- Правим имя адаптера, если отличается, а также ставим из своей подсети IP(незанятый), Defaul Gateway, DNS и имя домена (**nano** /**etc**/**netplan**/**50-cloud-init.yaml**):

![](topic:Integration.AddFiles.Screenshot_11176.jpg)

- Сохраняем изменения и выполняем команду: netplan apply
- Правим файл /etc/hosts (**nano** /**etc**/**hosts**)

![](topic:Integration.AddFiles.Screenshot_11177.jpg)

- Перегружаем машину командой **reboot**
- Проверяем наличие сети командой ping <IP default gateway>

![](topic:Integration.AddFiles.Screenshot_11178.jpg)

- Переходим в каталог /opt

![](topic:Integration.AddFiles.Screenshot_11179.jpg)

- Настройка завершена.



Также имеются скрипты запуска, остановки и перезапуска сервиса esb:

![](topic:Integration.AddFiles.Screenshot_11180.jpg)

<!--

## Установка пакетов

Установить docker

Установка пакетов:

    sudo apt update
    sudo apt install docker docker-compose nano

## Настройка каталогов

Создаем в папке `/opt` каталог esb и делаем `chmod 775 /opt/esb`

Создаем каталоги

    cd /opt
    sudo mkdir esb
    sudo chmod 775 esb -R
 
    cd /opt/esb
    nano docker-compose.yml

Создаем файл `/opt/esb/docker-compose.yml` следующего содержания:

docker-compose.yml

    version: '2'
    services:
    ESBApp:
        image: registry-context.cbg.local/turbo/turbo-esb:dev
        stdin_open: true
        restart: always
        volumes:
        - /opt/esb/logs:/var/log
        tty: true
        ports:
        - 8001:8001/tcp

## Разворачивание контейнеров из репозитория

Выполняем вход в репозиторий

Переходим в каталог `/opt/esb`

Разворачиваем контейнер: `р docker-compose up -d`

Командой `docker-compose ps` проверяем результат

<img src="Topic:Integration.AddFiles.ScreenShots.docker.png" class="screenshot"/>



## Переменные окружения

Для корректной работы контейнеров, перед запуском нужно настроить переменные среды исполнения приложения.

Выполняем команду

    cd /opt
    nano .env

Увидим следующее содержимое:

<img src="Topic:Integration.AddFiles.ScreenShots.variables.png" class="screenshot"/>

Изменяем под свое окружение.

## Описание параметров

* POSTGRES_USER=postgres - имя пользователя БД PostgreSQL

* POSTGRES_PASSWORD=postgres - пароль пользователя БД PostgreSQL
* POSTGRES_DB=esb-flows - база данных ESB PostgreSQL

* MONGO_HOST=localhost - опция хоста сервера MongoDB
* MONGO_DATABASE=portal - база данных MongoDB

* TURBO_HOST=http://111.111.111.111:91 - опция http сервера TURBO
* ESB_HOST=http://EsbApp - не менять
* HOST_NAME= - наименование текущего домена проекта (портала, например *www.my-portal.ru*)

* SENDER_CODE_LENGTH=6 - длина кода подтверждения проверок
* SENDER_PROVIDER=EMAIL - EMAIL, SMS_CENTER, UNISENDER - тип рассыльщика оповещений действий портала (EMAIL - обычный почтовый рассыльщик, SMS_CENTER (https://smsc.ru/), UNISENDER (https://www.unisender.com/) - смс информирование)

* MAIL_SENDER_NAME=context-it.ru - имя рассылки, от которого приходит почта
* MAIL_SENDER_HOST=111.111.111.111 - хост сервера почтовой рассылки
* MAIL_SENDER_PORT=465 - порт сервера
* MAIL_SENDER_USERNAME=user - имя пользователя почтовой рассылки
* MAIL_SENDER_UPASSWORD='!QAZ1qaz' - пароль
* MAIL_SENDER_PROTOCOL=smtp - протокол сервера
* MAIL_SENDER_STARTTLS_ENABLE=false - https://ru.wikipedia.org/wiki/STARTTLS 
* MAIL_SENDER_AUTH_ENABLE=true - серверная аутентификация

* SMS_CENTER_SENDER_USERNAME=user1 - имя пользователя сервиса SMS_CENTER
* SMS_CENTER_SENDER_PASSWORD=password1 - пароль пользователя SMS_CENTER
* SMS_CENTER_SENDER_NAME=Turbo Portal - имя отправителя SMS_CENTER

* UNI_SENDER_KEY=api_key - приватный ключ пользователя UNISENDER
* UNI_SENDER_FORMAT=JSON
* UNI_SENDER_NAME=Turbo Portal - имя отправителя UNISENDER

 -->
##  Взаимодействие с ФИАС

При первом запуске необходимо выполнить полную загрузку базы ФИАС из ФНС. для этого в консоли машины ESB необходимо выполнить запрос:

curl -GET http://<адрес машины ESB>:8005/forceLoad

- Если запрос ничего не возвращает, необходимо проверить наличие базы в elasticsearch, если же ее нету - выполнить запрос к контейнеру FIAS GET http://{адрес машины ESB}:8005/forceLoad (процесс полного обновления базы может выполняться до 1 суток). Крайне не желательно использовать этот метод на рабочей базе.

- Если дельта-изменения не загрузились с серверов фиас, необходимо проверить таблицу updateLog в elasticsearch, и если же версии не совпадают - выполнить запрос к контейнеру FIAS GET http://{адрес машины ESB}:8005/forceDelta (процесс обновления базы по выгруженной дельте может выполняться до 1 часа).
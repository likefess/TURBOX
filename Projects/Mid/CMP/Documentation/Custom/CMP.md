﻿# Проект "Машина компонентов 2.0"

Проект основан на проекте "Машина реквизитов" и предназначен для работы с настройками реквизитов, представлений и типов процессов в информационной базе на базе функционала "Машины компонентов" проекта Com.
Для этого в проекте реализованы серверные классы для работы с разными типами реквизитов, представлений и настройками типов процессов.

При этом за счет использования машины компонентов появляется возможность работы с настройками типов процессов и реквизитов в web-интерфейсе, но не поддерживается работа с интерфейсом на базе бланков и картотек.
Так в панелях управления не поддерживаются соответствующие команды, такие как  "ОткрытьБланк", "ОткрытьКартотеку", "ОткрытьЖурнал" и основанные на них. Работа с настройками интерфейсных панелей на текущий момент не поддерживается.

Также в связи с тем, что интерфейс TurboX на базе "Машины компонетов" отличается от старого интерфейса Turbo9 на базе бланков и картотек, то поддерживаются не все настройки для надписей кнопок в представлениях. Внешний вид представлений тоже имеет отличия из-за использования других шрифтов.
В настощий момент реализована работа с представлениями следующих типов:
* Документ;
* Список объектов;
* Отчет;
* Контейнер представлеий;
* Печатная форма.

Остальные типы представлений не поддерживаются.

В проекте реализована работа со следующими типами реквизитов:
* Стандартный реквизит;
* Замок;
* Поле "Статус";
* Поле "Состояние процесса";
* Нумератор;
* Редактирование периодического поля;
* Кнопка перескока;
* Лимит;
* Сервис заполнения на основании;
* Сервис сворачивания позиций;
* Сервисная процедура "Добавить позицию";
* Сервисная процедура "Удалить позиции";
* Сервисная процедура "Удаление записей";
* Сервисная процедура "Построить отчет";
* Сервисная процедура "Добавить/удалить роль";
* Выбор каталога;
* Выбор файла;
* Электронное письмо.

Остальные типы реквизитов не поддерживаются.

В персчетах типа процесса поддерживаются не все пересчеты по событиям по сравнению с функционалом "Турбо 9". А именно не пддерживаются события:
* после удаления;
* после восстановления;
* после удаления позиции;
* перед добавлением позиции;
* перед перемещением позиции;
* после перемещения позиции.

Для использования функционала проекта надо подключить проект к информационной базе. После входа в сессию открыть центр управления "Компоненты и машина реквизитов\РМ тестирования".
Для вызова интерфейсов на базе фунционала  проекта из собственных интерфейсов настройщика в интерфейсе ролевого центра надо использовать соответствующие команды проекта:
* Открыть панель управления (OpenControlPanel);
* Открыть форму объекта (OpenControlPanel);
* Содать объект (CreateObject).
﻿#Ролевые центры

----------

**Назначение ролевых центров:** 

Для удобства работы пользователя и увеличения скорости обращения к командам и пунктам меню в системе предусмотрены Ролевые центры (РЦ).  На панель ролевого центра вынесены систематически повторяющиеся операции для разных типов пользователей. Базовая комплектация ТУРБО содержит ряд преднастроенных РЦ для разных типов пользователей и прав доступа к системе. 

Создание новых ролевых центров, удаление и изменение базового содержимого РЦ доступно только разработчику в режиме работы с Турбо студией.  Пользователю доступно добавление новых элементов, таких как, процедуры, отчеты и команды. Для модуля BI доступно так же добавление пользовательских информационных панелей. Пользователю с ролью Администратор открыта возможность добавления новых элементов для ролевых центров других пользователей. Администратор для настройки конкретного пользователя должен зайти под учетной записью данного пользователя в режиме полного доступа. Пользователь может изменять/ удалять только элементы своего ролевого центра. Элементы входящие в базовую комплектацию РЦ недоступны для редактирования пользователем. 

**Настройки ролевых центров:**

Для отображения РЦ в Главном меню необходимо выполнить следующие действия:

![](topic:.AddFiles.Screenshot_12089.jpg)

   * Открыть картотеку **Администрирование| Настройки |Роли доступа**. 
   * Выбрать Роль для настройки.
   * Открыть форму для редактирования.
   * На закладке Пользователи проверить, существует ли необходимый пользователь для данной роли (если нет - добавить) и настроить базовые права.
   * С помощью кнопки **Сервисы** ![](topic:Com.AddFiles.Buttons.Btn_Services.png) - **Компонентный ролевой доступ** открыть форму **Ролевой доступ**. Подробная настройка доступа ролевых центров описана **Администрирование| Настройки| Ролевой доступ**.
   * Необходимо сохранить изменения.


После применения настройки в Главном меню пользователя отобразится раздел «Все ролевые центры», содержащий ролевые центры для всех подключенных проектов. 
 
![](topic:.AddFiles.Screenshot_11253.jpg)

**Работа с Ролевыми центрами**

РМ открывается из Главного меню по щелчку мыши на записи раздела Ролевые центры. 

Раздел Ролевые центры состоит из подразделов для каждого установленного модуля Турбо, включающих в себя перечень рабочих мест (РМ) для каждой роли пользователя. 

Когда в Главном меню доступен пункт Все ролевые центры, быстрый переход из ролевого центра проекта к всем ролевым центрам осуществляется по кнопке **Все ролевые центры** ![](topic:.AddFiles.Buttons.Btn_all_role_c.png):

![](topic:.AddFiles.Screenshot_11702.jpg)


####Доступны несколько способов настройки РМ пользователем:

* Добавление элементов на РМ из Главного меню

![](topic:.AddFiles.Screenshot_11254.jpg)
 
Нажать правой кнопкой мыши на пункт Главного меню и выбрать пункт контекстного меню «Закрепить на РЦ» для добавления на РЦ выбранного РМ.

* Добавление элементов на РМ из рабочей области РЦ
 
![](topic:.AddFiles.Screenshot_11255.jpg)

Нажать правой кнопкой мыши в рабочей области РЦ и выбрать пункт контекстного меню «Добавить», далее отметить один из представленных в списке элементов для добавления на РЦ выбранного РМ. Далее необходимо произвести настройку созданного элемента. Для вызова настроечной формы дважды щелкните мышью на созданный элемент РЦ или выберите пункт контекстного меню «Свойства», вызываемого по щелчку правой кнопки мыши на созданном элементе РЦ. 

*Настройки отличаются в зависимости от выбранного типа добавляемого элемента:*

***Настройка новой функции:***

![](topic:.AddFiles.Screenshot_11256.jpg)

В поле Текст вручную укажите имя элемента и параметр. Флаг «Не показывать на экране» в установленном состоянии скрывает видимость элемента на РМ.

***Настройка новой команды:***

![](topic:.AddFiles.Screenshot_11258.jpg)

В поле Текст вручную укажите имя элемента. В поле Параметр выберите параметр из выпадающего списка. Флаг «Не показывать на экране» в установленном состоянии скрывает видимость элемента на РМ.

***Настройка отчета:***

![](topic:.AddFiles.Screenshot_11259.jpg)
 
В поле Текст вручную укажите имя элемента. В поле Параметр из картотеки «Настройки отчетов» выберите отчет. Выбранный отчет доступен по кнопке перехода ![](topic:.AddFiles.Buttons.Btn_togo2.png) . В поле настройка из выпадающего списка укажите вариант запуска для выбранного отчета.  Флаг «Не показывать на экране» в установленном состоянии скрывает видимость элемента на РМ.


***Настройка информационной панели:***
 
![](topic:.AddFiles.Screenshot_11260.jpg)

В поле Текст вручную укажите имя элемента. В поле Параметр из картотеки «Список панелей» выберите панель. Выбранная панель доступна по кнопке перехода ![](topic:.AddFiles.Buttons.Btn_togo2.png) . В поле настройка из выпадающего списка укажите вариант запуска для выбранной панели.  Флаг «Не показывать на экране» в установленном состоянии скрывает видимость элемента на РМ.

* Добавление элементов на РМ из картотек Список панелей и Настройки отчетов:

![](topic:.AddFiles.Screenshot_11261.jpg)
 
Выделите запись картотеки и воспользуйтесь опцией меню Применить  ![](topic:.AddFiles.Buttons.Btn_OK.png)   - «Закрепить на РЦ».


* Добавление элементов на РМ через настройку Ролевого центра:
 
![](topic:.AddFiles.Screenshot_11262.jpg)

Настройка ролевого центра открывается из контекстного меню, вызываемого по щелчку правой кнопки мыши на рабочей области РЦ. 

![](topic:.AddFiles.Screenshot_11263.jpg)

Для добавления нового элемента на РМ нажмите кнопку Add![](topic:.AddFiles.Buttons.Btn_Add.png)  в том разделе РЦ, куда необходимо добавить элемент. Далее процедура настройки повторяет настройку «Добавление элементов на РМ из рабочей области РЦ».

***Для персонализации настройки:***

Нажать правой кнопкой мыши в рабочей области РЦ и выбрать пункт контекстного меню «Администрирование», далее в открывшемся Редакторе РЦ конкретного проекта выбрать с помощью первого выпадающего списка признак Пользователь или Роль, с помощью второго выпадающего списка  назначить конкретного пользователя или роль в системе, для которого применяются данные настройки РЦ:

  ![](topic:.AddFiles.Screenshot_11703.jpg)

Для применения настроек РЦ и перехода к РМ нажмите кнопку ОК ![](topic:.AddFiles.Buttons.Btn_Post.png)  , для перехода к РМ без сохранения – кнопку ![](topic:.AddFiles.Buttons.BtnCloseCancel.png)  .    Для удаления пользовательских настроек нажмите кнопку ![](topic:.AddFiles.Buttons.Btn_Cancel.png) . Для получения помощи воспользуйтесь кнопкой **Помощь**![](topic:.AddFiles.Buttons.Btn_help.png) или клавишей **F1**.

**Работа с пользовательскими элементами ролевого центра**

Нельзя открыть два и более РМ одновременно. Пользовательские элементы не копируются (не переносятся) с одного РМ на другое. Рабочая область РЦ поделена на несколько блоков элементов. Пользователю доступны опции создания, редактирования, просмотра и удаления элементов РМ.

* Изменение месторасположения элементов РЦ:

Для переноса пользовательского элемента в пределах одного РМ зажмите левой кнопкой мыши элемент, который необходимо перенести и переместите в пределах РМ.

* Удаление пользовательских элементов РЦ:

Для удаления пользовательского элемента с РМ воспользуйтесь опцией «Удалить» контекстного меню, вызываемого по щелчку правой кнопки мыши.
 
![](topic:.AddFiles.Screenshot_11264.jpg)

* Просмотр элементов РМ:

Для удобства пользователя рабочее место может состоять из большого количества элементов. Не всегда элементы помещаются в рабочей области экрана. Для просмотра элементов, которые не отобразились в рабочей области необходимо Скролингом прокрутить весь блок элементов до нужного. Второй способ доступа к неотображаемым элементам с помощью кнопки ![](topic:.AddFiles.Buttons.Btn_more.png) .  Нажмите на кнопку и выберите из списка необходимый элемент:
 
![](topic:.AddFiles.Screenshot_11265.jpg)

![](topic:.AddFiles.Screenshot_11256.jpg)
 














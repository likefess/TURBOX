
# Выгрузка в Excel

Порядок работы:


1.**Тип точки подключения**

Выбираем тип точки подключения (XSLX Writer Flow Ftp (automatic download)), полученную от  ESB  Сервисом ![](topic:AddFiles.Buttons.Btn_Services.png) - Получить доступные типы точек подключения (ESB)

![](topic:AddFiles.ScreenShots.Screenshot_10906.jpg)

2.**Точка подключения** 

- Наименование - задается вручную название точки подключения  (Unload Excel)
- Тип точки подключения - выбираем из справочника Типы точек подключения (кнопка Выбор ![](topic:AddFiles.Buttons.Btn_select.png)). Карточка выбранного типа точки подключения доступна по кнопке ![](topic:AddFiles.Buttons.Btn_go.png) (XSLX Writer Flow Ftp (automatic download))
- Блок параметры заполняется автоматически в соответствии с данными из типа точки подключения, возможно редактирование столбцов Значение и Описание.

![](topic:AddFiles.ScreenShots.Screenshot_10905.jpg)


3.**Настройка** 

- Наименование - задается вручную название настройки (Выгрузка Excel)
- Направление обмена - заполняется из выпадающего списка: выгрузка 
- Вариант запуска - из выпадающего списка: по расписанию или вручную
- Точка подключения - выбираем из справочника Точек подключения (кнопка Выбор ![](topic:AddFiles.Buttons.Btn_select.png)). Карточка выбранной точки подключения доступна по кнопке ![](topic:AddFiles.Buttons.Btn_go.png) (Unload Excel)
- Правило сопоставления - заполняется из справочника Соответствие полей (кнопка Выбор ![](topic:AddFiles.Buttons.Btn_select.png)).Карточка выбранного правила доступна по кнопке ![](topic:AddFiles.Buttons.Btn_go.png)
- Программный класс обработки - заполняется из выпадающего списка: Service.ILineProcessor
- Фильтр - заполняется из справочника Фильтр (кнопка Выбор ![](topic:AddFiles.Buttons.Btn_select.png)).Карточка выбранного фильтра доступна по кнопке ![](topic:AddFiles.Buttons.Btn_go.png)
  

![](topic:AddFiles.ScreenShots.Screenshot_10904.jpg)

4.Ручной запуск настройки обмена осуществляется по кнопке Сервисы ![](topic:AddFiles.Buttons.Btn_Services.png):

- Выполнить
- Выполнить асинхронно

5.Результат выгрузки в Excel:


![](topic:AddFiles.ScreenShots.Screenshot_10907.jpg)



                                                           

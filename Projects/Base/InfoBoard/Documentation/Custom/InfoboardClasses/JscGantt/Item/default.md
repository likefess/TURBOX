---
Link: InfoBoard.Ctrl.Jsc.Item
---

[Диаграмма Гантта](..\default)

# Ctrl.Jsc.Item

Базовый класс элементов диаграммы Гантта.

Наследник класса Com.IContainer.

#### Свойства и методы
* [Поле BeginDate](BeginDate) - дата начала элемента
```
BeginDate :Date
```
* [Поле EndDate](EndDate) - дата окончания элемента
```
EndDate :Date
```
* [Функция GetJson](GetJson) - настройки для элемента
```
GetJson :Storage
```
* [Функция IsValid](IsValid) - элемент может отображатся на диаграмме
```
IsValid :Logical
```
* [Событие OnClick](OnClick) - событие при клике на элемент
```
OnClick :proc (aItem :Selftype)
```
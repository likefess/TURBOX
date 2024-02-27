---
Link: CMP.Rec.IVisibilitySetting
---

<!--- Навигация
[Имя проекта](#)
-->

# Абстрактный класс обертка записей с условиями видимости
---
От данного класса наследуются классы обертки для записей подтаблиц настроек внешнего вида представлений, панелей упавления и т.д с полями условий видимости.
Условия видимости проверяются в функциях настройки форм предсталений и панелей управления.

<!---
## Примеры
-->

## Свойства

<!--
### Типы
* [Тип 1](#)
-->

### Поля
* [Поле VisibilityCondition](topic:.Custom.CMPClasses.Rec.IVisibilitySetting.VisibilityCondition)

### Подтаблицы
* [Подтаблица ConditionRecords](topic:.Custom.CMPClasses.Rec.IVisibilitySetting.ConditionRecords)

### Методы
* [ApplySetting](topic:.Custom.CMPClasses.Rec.IVisibilitySetting.ApplySetting)

## Классы, производные от IVisibilitySetting:

* [IDocument_TableType](topic:.Custom.CMPClasses.Rec.Views.IDocument.IDocument_TableType.Default) - класс обертка записи настройки типа движения представления Документ;
* [IDocument_Settings](topic:.Custom.CMPClasses.Rec.Views.IDocument.IDocument_Settings.Default) - класс обертка записи настройки внешнего вида представления Документ;
* [IObjectsList_Columns](topic:.Custom.CMPClasses.Rec.Views.IObjectsList.IObjectsList_Columns.Default) - класс обертка записи настройки внешнего вида представления СписокОбъектов;
* [IViewsContainer_List](topic:.Custom.CMPClasses.Rec.Views.IViewsContainer.IViewsContainer_List.Default) - класс обертка записи настройки представления в представлении Контейнер.


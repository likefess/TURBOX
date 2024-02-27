---
Link: Com.Ctrl.ITable.@ExportAlways
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Поле ExportAlways

## Описание

    ExportAlways :Logical;

## Назначение

Экспортировать компонент на web при каждой выгрузке.

Свойство имеет смысл использовать для контролов с обработчиком OnOutput
(который выводит некоторое составное свойство, а не просто форматирует
текущее значение) или OnDraw (который меняет свойства контрола исходя
из сторонних событий, не связанных с изменением значения контрола)


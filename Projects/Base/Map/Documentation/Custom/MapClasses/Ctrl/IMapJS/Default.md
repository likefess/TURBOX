---
Title: Компонент IMapJS
Keywords: IMapJS, MapJS, Map, Карты
Link: .Ctrl.IMapJS
---

IComponent : IContainer : [Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default)

# IMapJS

Класс IMapJS, производный от родительского класса Ctrl.IJSControl, наследует все
его свойства и используется для отображения географических карт.

Непосредственно в классе IMapJS определены следующие свойства:

* [Поле Zoom](Zoom)
* [Поле OffsetX](OffsetX)
* [Поле OffsetY](OffsetY)
* [Поле Markers](Markers)
* [Поле ShowLegend](ShowLegend)
* [Поле Position](Position)
* [Поле SymbolWidth](SymbolWidth)
* [Поле SymbolHeight](SymbolHeight)
* [Поле OpacityLegend](OpacityLegend)
* [Поле ShowConnection](ShowConnection)
* [Поле ColorConnection](ColorConnection)
* [Поле OpacityConnection](OpacityConnection)

События

* [Событие OnInitMapJS](OnInitMapJS)
* [Событие OnChangeMapJS](OnChangeMapJS)
* [Событие OnClickItemJS](OnClickItemJS)

Методы

* [Функция MarkersTypeFromString](MarkersTypeFromString)
* [Функция MarkersTypeToString](MarkersTypeToString)
* [Функция PositionsTypeFromString](PositionsTypeFromString)
* [Функция PositionsTypeToString](PositionsTypeToString)
* [Процедура Clear](Clear)
* [Процедура Load](Load)
* [Процедура Read](Read)
* [Процедура BeginModify](BeginModify)
* [Процедура EndModify](EndModify)
* [Процедура ToJsonItems](ToJsonItems)
* [Процедура FromJsonItems](FromJsonItems)
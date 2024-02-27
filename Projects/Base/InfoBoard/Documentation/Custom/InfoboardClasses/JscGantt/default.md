---
Link: InfoBoard.Ctrl.JscGantt
---

# Диаграмма Гантта

Класс Ctrl.JscGantt является наследником класса Com.Ctrl.IJSControl
и включает следующие элементы:
 - Горизонтальную [ось времени](Axis.default).
   На диаграмме возможно несколько осей.
 - Вертикальную ось задач. Подписи к этой оси могут быть организованы в виде таблицы.
   Идентификатором строки является [имя задачи](Point.caption).
 - Группы задач (проекты) - [Tasks](Tasks.default), состоящие из [задач](Task.default).
 - Группы вех проекта - [Milestones](Milestones.default), состоящие из [меток/вех](Milestone.default).
   Метки отображаются в виде маркера, не имеют имени, группа попадает в легенду
 - Диапазоны на оси времени - [Timeframe](Timeframe.default)

Диаграмма реализована при помощи javascript-плагина [jscharting.com](https://jscharting.com/tutorials/types/js-gantt-chart/)


## Свойства класса Ctrl.JscGantt

### Поля
* [Поле ShowGroups](ShowGroups)
* [Поле FoldGroups](FoldGroups)
* [Поле EmptyAsMarker](EmptyAsMarker)
* [Поле ShowTaskAxis](ShowTaskAxis)
* [Поле TaskAxisCrosshair](TaskAxisCrosshair)
* [Поле DefaultTick](DefaultTick)
* [Поле TaskHeader](TaskHeader)
* [Поле TaskHeaderSize](TaskHeaderSize)
* [Поле TaskHeaderBold](TaskHeaderBold)
* [Поле TableWidth](TableWidth)
* [Поле TableAlign](TableAlign)
* [Поле TableCaptionAlign](TableCaptionAlign)
* [Поле ShowTimeAxis](ShowTimeAxis)
* [Поле TimeAxisLabel](TimeAxisLabel)
* [Поле TimeAxisCrosshair](TimeAxisCrosshair)
* [Поле TimeAxisFormat](TimeAxisFormat)
* [Поле TimeAxisAutoRange](TimeAxisAutoRange)
* [Поле TimeAxisMin](TimeAxisMin)
* [Поле TimeAxisMax](TimeAxisMax)
* [Поле ShowTooltip](ShowTooltip)
* [Поле DefaultTooltip](DefaultTooltip)
* [Поле ExportButtonPlace](ExportButtonPlace)
* [Поле ExportButtonAlignSide](ExportButtonAlignSide)
* [Поле ExportButtonAlignment](ExportButtonAlignment)
* [Поле DefaultRadius](DefaultRadius)
* [Поле Palette](Palette)
* [Поле ArrowType](ArrowType)
* [Поле ArrowWidth](ArrowWidth)
* [Поле ArrowSize](ArrowSize)
* [Поле ArrowColor](ArrowColor)
* [Поле ArrowDash](ArrowDash)
* [Поле ArrowOpacity](ArrowOpacity)
* [Поле ShowLegend](ShowLegend)
* [Поле LegendPlace](LegendPlace)
* [Поле LegendAlignSide](LegendAlignSide)
* [Поле LegendAlignment](LegendAlignment)
* [Поле LegendLayout](LegendLayout)
* [Поле LegendTemplate](LegendTemplate)
* [Поле MarginTop](MarginTop)
* [Поле MarginLeftRight](MarginLeftRight)
* [Поле MarginBottom](MarginBottom)
* [Поле ContainerWidth](ContainerWidth)
* [Поле ContainerHeight](ContainerHeight)
* [Поле FTable](FTable)
* [Поле FTableWidth](FTableWidth)
* [Поле FTableAlign](FTableAlign)

### Методы
* [Процедура Clear](Clear)
* [Процедура Render](Render)
* [Процедура RenderSvg](RenderSvg)
* [Процедура GetJson](GetJson)
* [Процедура GetLabel](GetLabel)
* [Процедура WidthAsTable](WidthAsTable)
* [Процедура HeaderAsTable](HeaderAsTable)
* [Процедура StringAsTable](StringAsTable)
* [Процедура ArrayAsTable](ArrayAsTable)
* [Процедура AddTaskGroup](AddTaskGroup)
* [Процедура AddTimeframe](AddTimeframe)
* [Процедура EachTask](EachTask)
* [Процедура EachGroup](EachGroup)
* [Процедура CalcDateRange](CalcDateRange)
* [Процедура EachGroupChronologicaly](EachGroupChronologicaly)
* [Процедура EachTaskChronologicaly](EachTaskChronologicaly)
* [Процедура EachMilesone](EachMilesone)
* [Процедура EachMilesoneChronologicaly](EachMilesoneChronologicaly)
* [Процедура TaskCount](TaskCount)
* [Процедура SetSpanTable](SetSpanTable)
* [Процедура GetLegend](GetLegend)
* [Процедура GetTaskAxis](GetTaskAxis)
* [Процедура GetTimeAxes](GetTimeAxes)
* [Процедура GetTimeAxis](GetTimeAxis)
* [Процедура GetTaskHeader](SetTableAlign)
* [Процедура GetSeriesInfo](GetSeriesInfo)
* [Процедура GetMargins](GetMargins)
* [Процедура GetDefaultSeries](GetDefaultSeries)

### События
* [Событие OnClick](OnClick)
* [Событие OnRender](OnRender)

### Внешние ссылки
 - Обзор возможностей [плагина](https://jscharting.com/tutorials/types/js-gantt-chart/).
 - Используемые [палитры](https://jscharting.com/documentation/#node=Home.API.json.Enums.palette)
 - Правила [форматирования дат](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings)

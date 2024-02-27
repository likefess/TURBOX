---
Title: Компонент IFrame
Link: .Ctrl.IFrame
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default)

# Ctrl.IFrame

Класс *Ctrl.IFrame* используется для работы с фреймами.

Фрейм - это область формы, имеющая уникальное имя и набор атрибутов, которые задаются при
создании нового фрейма. Фреймы на форме могут быть представлены в иерархическом виде. Под
субфреймом понимается фрейм, вложенный в другой фрейм.

*Внимание! Для вывода таблиц используйте [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default).*

Наследует все свойства и методы родительского класса Ctrl.IControlsLayout.

Непосредственно в классе *Ctrl.IFrame* определены следующие свойства класса:
* [Функция CreateEx](CreateEx)

и свойства объекта:
* [Поле HelpContext](HelpContext)
* [Поле Subtable](Subtable)
* [Поле CurrentRow](CurrentRow)
* [Поле TableRowsCount](TableRowsCount)
* [Поле Table](Table)
* [Поле TableID](TableID)
* [Поле FrameType](FrameType)
* [Поле CurrentFrame](CurrentFrame)
* [Поле ShowTabs](ShowTabs)
* [Поле Orientation](Orientation)
* [Поле Size](Size)
* [Поле MinSize](MinSize)
* [Поле MaxSize](MaxSize)
* [Поле AutoSize](AutoSize)
* [Поле Proportion](Proportion)
* [Поле MinHeight](MinHeight)
* [Поле PrintWidth](PrintWidth)
* [Поле PrintHeight](PrintHeight)
* [Поле UseSplitter](UseSplitter)
* [Поле SplitterAtRight](SplitterAtRight)
* [Поле CanResizeBySplit](CanResizeBySplit)
* [Поле CanHideBySplit](CanHideBySplit)
* [Поле ScrollerStyle](ScrollerStyle)
* [Поле Margins](Margins)
* [Поле MarginsEx](MarginsEx)
* [Поле WebMargins](WebMargins)
* [Поле Numbering](Numbering)
* [Поле Sortable](Sortable)
* [Поле ManualControl](ManualControl)
* [Поле CanInsert](CanInsert)
* [Поле CanDelete](CanDelete)
* [Поле CanMove](CanMove)
* [Поле Freezed](Freezed)
* [Поле FreezedHeight](FreezedHeight)
* [Поле FreezedTable](FreezedTable)
* [Поле Adaptive](Adaptive)
* [Поле OneControl](OneControl)
* [Поле InplaceForm](InplaceForm)
* [Поле CardFile](CardFile)
* [Поле SubCardfile](SubCardfile)
* [Поле Picture](Picture)
* [Событие OnMove](OnMove)
* [Событие OnSwitch](OnSwitch)
* [Событие OnInsert](OnInsert)
* [Событие OnDelete](OnDelete)
* [Событие OnChangePosition](OnChangePosition)
* [Процедура Redraw](Redraw)
* [Функция AddHeader](AddHeader)
* [Функция AddFrame](AddFrame)
* [Функция InsertFrame](InsertFrame)
* [Функция DoSwitch](DoSwitch)
* [Процедура DoDelete](DoDelete)
* [Процедура DoInsert](DoInsert)
* [Процедура DoChangePosition](DoChangePosition)
* [Процедура Delete](Delete)
* [Процедура Insert](Insert)
* [Процедура ChangePosition](ChangePosition)
<!--* [Процедура DoMove](DoMove) web -->
<!--* [Процедура DoResize](DoResize) web -->
* [Процедура DeletePos](DeletePos)
* [Процедура InsertPos](InsertPos)
* [Процедура PosUp](PosUp)
* [Процедура PosDown](PosDown)
<!--* [Функция JSON_Orientation](JSON_Orientation) web -->
<!--* [Функция JsonFullViewStorage](JsonFullViewStorage) web -->
* [Функция StateHeadersData](StateHeadersData)
* [Функция SortDir](SortDir)
* [Процедура SortByColumn](SortByColumn)
* [Процедура SortBy](SortBy)
* [Функция CompareByColumns](CompareByColumns)
* [Функция CompareByFields](CompareByFields)
* [Процедура SetSubCardFrame](SetSubCardFrame)
* [Функция Resizeble](Resizeble)
* [Функция CurrentSize](CurrentSize)
* [Процедура EachSubframe](EachSubframe)
* [Функция AddNewFrame](AddNewFrame)
* [Функция AddBox](AddBox)
* [Процедура StartGroup](StartGroup)
* [Процедура StartGroupEx](StartGroupEx)
* [Процедура SetColumns](SetColumns)
* [Процедура StopGroup](StopGroup)
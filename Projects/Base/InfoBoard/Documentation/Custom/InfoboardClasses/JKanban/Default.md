---
Link: InfoBoard.Ctrl.JKanban
---

<!--- Навигация
[Имя проекта](#)
-->

# Класс JKanban
---

Kanban-панель. Является наследником класса Com.Ctrl.IJSControl.
Реализована на javascript-плагине [https://github.com/riktar/jkanban](https://github.com/riktar/jkanban).
Состоит из набора досок Ctrl.JKBoard
На досках размещаются карточки Ctrl.JKCard.
Карточки могут переноситься мышкой между досками.
Для каждой доски задаются свои правила переноса.
Поддержана работа с контекстым меню и события:
   - OnCardClick - при клике левой кнопкой на карточку
   - OnContext - при клике правой кнопкой на карточку
   - OnButtonClick - при клике левой на кнопку таблицы
   - OnCardMove - после перемещения карточки (с изменением позиции)
   - OnBeforeDrag/OnAfterDrag - перед/после перемещения карточки

Доски и карточки должны иметь уникальные идентификаторы.
* доски хранятся в List'е Components и Storage'е Component;
* карточки хранятся в Storage'е Cards.

<!---
## Примеры
-->

## Свойства

<!--
### Типы
* [Тип 1](#)
-->

### Поля
* [Поле CardById](CardById)
* [Поле CardsCount](CardsCount)
* [Поле BoardById](BoardById)
* [Поле BoardsCount](BoardsCount)
* [Поле Cards](Cards)
* [Поле ContextMenu](ContextMenu)

### Методы
* [Функция AddBoard](AddBoard)
* [Процедура AddBoards](AddBoards)
* [Процедура AddBoardEx](AddBoardEx)
* [Процедура DelAllBoards](DelAllBoards)
* [Процедура ClearAllBoards](ClearAllBoards)
* [Процедура AddCard](AddCard)
* [Процедура AddCards](AddCards)
* [Функция AddCardEx](AddCardEx)
* [Процедура MoveCard](MoveCard)
* [Процедура ShowContextMenu](ShowContextMenu)
* [Процедура ClearContextMenu](ClearContextMenu)
* [Процедура AddContextSeparator](AddContextSeparator)
* [Процедура AddContextItem](AddContextItem)
* [Процедура CancelDrag](CancelDrag)

### События
* [Событие OnCardClick](OnCardClick)
* [Событие OnContext](OnContext)
* [Событие OnButtonClick](OnButtonClick)
* [Событие OnBeforeDrag](OnBeforeDrag)
* [Событие OnCardMove](OnCardMove)
* [Событие OnAfterDrag](OnAfterDrag)


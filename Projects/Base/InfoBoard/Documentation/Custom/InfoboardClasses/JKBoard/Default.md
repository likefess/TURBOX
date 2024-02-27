---
Link: InfoBoard.Ctrl.JKBoard
---

<!--- Навигация
[Имя проекта](#)
-->

# Класс JKBoard
---
Доска kanban-панели. Является наследником класса Com.IContainer.
- Карточки хранятся как дочерние компоненты в List'e Components
- Owner и Parent - ссылка на kanban-панель
- изменение правил переноса между карточками (свойства DragTo/DragToBoards)
- возможно только то добавления доски на панель

<!---
## Примеры
-->

## Свойства

<!--
### Типы
* [Тип 1](#)
-->

### Поля
* [Поле Caption](Caption)
* [Поле DragToBoards](DragToBoards)
* [Поле Color](Color)
* [Поле ColorHtml](ColorHtml)
* [Поле Parent](Parent)
* [Поле DragTo](DragTo)
* [Поле CardsCount](CardsCount)

### Методы
* [Процедура Delete](Delete)
* [Процедура Clear](Clear)
* [Процедура AddCard](AddCard)
* [Процедура AddCards](AddCards)
* [Функция AddCardEx](AddCardEx)
* [Процедура EachCard](EachCard)
* [Процедура FindCard](FindCard)
* [Процедура GetJson](GetJson)
* [Процедура ExecuteScript](ExecuteScript)

### События
* [Событие OnCardClick](OnCardClick)
* [Событие OnContext](OnContext)
* [Событие OnButtonClick](OnButtonClick)
* [Событие OnBeforeDrag](OnBeforeDrag)
* [Событие OnAfterDrag](OnAfterDrag)


---
Link: InfoBoard.Ctrl.JKanban.@AddContextItem
---

<!---  Навигация
[Имя проекта](#) :
-->
[InfoBoard.Ctrl.JKanban](Default)

# Процедура AddContextItem
---

## Описание

    proc AddContextItem (aOnClick :Ctrl.JKanban.TOnClickCard; aText :String; {aImgSrc :String}; {aHotkey :String})

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Добавляет элемент в контекстное меню в стиле Chrome. Элемент содержит:  
* надпись aText
* иконку aImgSrc (для загрузки иконок из проекта используйте InfoBoard.Lib.ImgSrc)  
* "горячую клавишу" aHotkey (работу "горячих клавиш" в браузере нужно поддерживать отдельно)  

При выборе этого элемента вызывается функция aOnClick.

<!--
## Пример

    AddContextItem...
-->


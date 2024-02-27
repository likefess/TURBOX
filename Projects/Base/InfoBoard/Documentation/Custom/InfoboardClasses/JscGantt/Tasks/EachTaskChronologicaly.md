---
Link: InfoBoard.Ctrl.Jsc.Tasks.@EachTaskChronologicaly
---

<!---  Навигация
[Имя проекта](#) :
-->
[InfoBoard.Ctrl.Jsc.Tasks](Default)

# Процедура EachTaskChronologicaly
---

## Описание

    proc EachTaskChronologicaly (aCallback :func (aTask :Ctrl.Jsc.Task) :Logical)

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура перебирает группы задач и для каждой выполняет функцию aCallback. Если aCallback возвращает true, то обход элементов прекращается.

<!--
## Пример

    EachTaskChronologicaly...
-->


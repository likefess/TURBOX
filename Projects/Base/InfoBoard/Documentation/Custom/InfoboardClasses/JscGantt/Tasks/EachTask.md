---
Link: InfoBoard.Ctrl.Jsc.Tasks.@EachTask
---

<!---  Навигация
[Имя проекта](#) :
-->
[InfoBoard.Ctrl.Jsc.Tasks](Default)

# Процедура EachTask
---

## Описание

    proc EachTask (aCallback :func (aTask :Ctrl.Jsc.Task) :Logical)

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура перебирает задачи и для каждой выполняет функцию aCallback. Если aCallback возвращает true, то обход элементов прекращается

<!--
## Пример

    EachTask...
-->


---
Link: InfoBoard.Ctrl.JscGantt.@EachTaskChronologicaly
---

<!---  Навигация
[Имя проекта](#) :
-->
[InfoBoard.Ctrl.JscGantt](Default)

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

Процедура перебирает задачи в хронологическом порядке и для каждой выполняет функцию aCallback. Если aCallback возвращает true, то обход элементов прекращается

<!--
## Пример

    EachTaskChronologicaly...
-->


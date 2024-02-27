---
Link: InfoBoard.Ctrl.JscGantt.@EachGroupChronologicaly
---

<!---  Навигация
[Имя проекта](#) :
-->
[InfoBoard.Ctrl.JscGantt](Default)

# Процедура EachGroupChronologicaly
---

## Описание

    proc EachGroupChronologicaly (aCallback :func (aGroup :Ctrl.Jsc.Tasks) :Logical)

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура перебирает группы задач в хронологическом порядке и для каждой выполняет функцию aCallback. Если aCallback возвращает true, то обход элементов прекращается

<!--
## Пример

    EachGroupChronologicaly...
-->


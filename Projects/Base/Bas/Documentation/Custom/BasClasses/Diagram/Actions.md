---
Link: .DiaGen.Actions
---

# Класс DiaGen.Actions
---

Набор действий, которые могут выполняться при клике на элемент диаграммы.

Для добавления собственных действий необходимо создать наследник `DiaGen.Actions`, в нём добавить метод
с сигнатурой `proc (aItem :Com.Ctrl.Diagram.Item; aDatalink :Bas.DiaGen.Datalink)` и директивой `#help`.
Надпись в директиве `#help` используется как наименование элемента в списке возможных действий.

Так же могут использоваться атрибуты:
* `#attr UseParams = true`  
В действии используется строковое поле [Параметры](topic:.Custom.BasClasses.Diagram.Datalink)
* `#attr UseParams = 'CommandOnLookup'`  
В действии используется строковое поле [Параметры](topic:.Custom.BasClasses.Diagram.Datalink)
, у которого есть указанное событие OnLookup
* `#attr RecordClass = 'Com.Rec.Service.Report'`  
Задаёт RecordClass для поля связи с [объектом БД](topic:.Custom.BasClasses.Diagram.Datalink)

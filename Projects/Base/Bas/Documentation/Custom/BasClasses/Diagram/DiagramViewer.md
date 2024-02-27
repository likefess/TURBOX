---
Link: .Frm.Service.DiagramViewer
---

# Класс Frm.Service.DiagramViewer
---

Используется для показа настроенной диаграммы.
Диаграмма визуализируется компонентом [IDiagramJS](topic:Com.Custom.ComClasses.Ctrl.IDiagramJS.Default).
При клике на элементы диаграммы выполняется заданное пользователем [действие](topic:.Custom.BasClasses.Diagram.Action).

Для показа диаграммы используется метод `Open`
```
func Open(aValue :Variant; aWindowStyle :WindowStyles = AutoDetect; aReferrerForm :Com.Frm.IForm = nil; aOnSelect :proc(aValue :Variant) = nil; aOnCancel :proc = nil) :Selftype
```
В параметр aValue может быть передано:
* Запись Service.Diagram или её [обёртка](topic:.Custom.BasClasses.Diagram.DiagramRec)
* Объект [Com.Ctrl.IDiagramJS](topic:Com.Custom.ComClasses.Ctrl.IDiagramJS.Default)
* Json-строка содержащая внутреннее представление [IDiagramJS](topic:Com.Custom.ComClasses.Ctrl.IDiagramJS.Default)
* Класс [Frm.Service.DiagramTuner](topic:.Custom.BasClasses.Diagram.DiagramTuner)
* Класс [DiaGen.ManualLayout](topic:.Custom.BasClasses.Diagram.ManualLayout)

Если передан параметр `aOnSelect` или `aOnCancel`, то вьювер работает в режиме диалога.
Форма при этом открывается модально, а при клике на элемент закрывается и
выполняет процедуру `aOnSelect` (в неё передаётся связанный с кликнутым элементом объект).
Процедура `aOnCancel` выполняется если пользователь закрыл форму не осуществив выбора.

Наследник класса `Com.Frm.IBlankForm`.
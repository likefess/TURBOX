---
Title: Диаграмма
Keywords: Диаграмма, визуализация процессов, граф зависимостей, схем
---

# Диаграмма: визуализация процессов, зависимостей, схем
---

## Подсистема рисования диаграмм

Подсистема служит для работы с диаграммами (графами).
Диаграммы могут быть как заданы пользователем, так и формироваться автоматически.

Для визуализации используется компонент [IDiagramJS](topic:Com.Custom.ComClasses.Ctrl.IDiagramJS.Default).

Для хранения используется [Rec.Service.Diagram](topic:.Custom.BasClasses.Diagram.DiagramRec).

Подсистема состоит из следующих основных блоков:
* [Редактор диаграммы](topic:.Custom.BasClasses.Diagram.DiagramTuner)
* [Просмотр диаграммы](topic:.Custom.BasClasses.Diagram.DiagramViewer)
* Правила ([режимы](topic:.Custom.BasClasses.Diagram.ManualLayout)) построения диаграмм
* [Привязка](topic:.Custom.BasClasses.Diagram.Datalink) данных к элементам диаграммы
и [действия](topic:.Custom.BasClasses.Diagram.Actions) при клике на элемент
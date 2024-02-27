---
Link: Com.Ctrl.Grids.CanvasGrid.@EndModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.Grids.CanvasGrid](Default)

# Процедура EndModify

## Описание

    proc EndModify;

## Назначение

Включение перерисовки таблицы, которая по умолчанию выполняется
автоматически при любых программных изменениях ячеек, но была запрещено
предыдущим вызовом [BeginModify](BeginModify). 

При каждом вызове **BeginModify** внутренний счетчик блокировки таблицы увеличивается,
а при вызове данной процедуры уменьшается. Автоматическая перерисовка таблицы включается,
только когда счетчик становится равным нулю.

Использовать процедуру имеет смысл после фрагмента кода, выполняющего массированный пересчет
значений ячеек. 
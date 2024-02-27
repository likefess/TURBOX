---
Link: Com.Ctrl.IGrid.@EndModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Процедура EndModify

## Описание

    proc EndModify;

## Назначение

Включение обновления (перерисовки) таблицы, которое по умолчанию выполняется
автоматически при любых программных изменениях ячеек, но было запрещено
предыдущим вызовом [BeginModify](BeginModify). 

При каждом вызове **BeginModify** внутренний счетчик блокировки таблицы увеличивается,
а при вызове данной процедуры уменьшается. Автоматическая перерисовка таблицы включается,
только когда счетчик становится равным нулю.

Использовать процедуру имеет смысл после фрагмента кода, выполняющего массированный пересчет
значений ячеек. 
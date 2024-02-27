---
Link: Com.Ctrl.Grids.CanvasGrid.@BeginModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.Grids.CanvasGrid](Default)

# Процедура BeginModify

## Описание

    proc BeginModify;

## Назначение

Отключение перерисовки таблицы, которая по умолчанию выполняется автоматически
при любых программных изменениях ячеек. Использовать процедуру имеет смысл перед началом
фрагмента кода, выполняющего массированный пересчет значений ячеек.
После выполнения вычислений следует вызвать парную процедуру [EndModify](EndModify).

При каждом вызове данной процедуры внутренний счетчик блокировки таблицы увеличивается,
а при вызове **EndModify** уменьшается. Когда счетчик становится равным нулю,
автоматическая перерисовка таблицы включается.
---
Link: Com.Ctrl.IGrid.@Modifying
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Поле Modifying

## Описание

    Modifying :Logical;

## Назначение

Равно True, когда  обновление (перерисовка) таблицы, которое по умолчанию выполняется
автоматически при любых программных изменениях ячеек, отключено вызовом [BeginModify](BeginModify)
и не включено обратно вызовом [EndModify](EndModify).

Поле доступно только на чтение.
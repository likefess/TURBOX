---
Link: .Ctrl.ICardTree.@DoModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[ICardTree](Default)

# Функция DoModify

## Описание

    func DoModify(aAction :ModifyActions; aRec :Rec.IRecord; aGroup :Rec.IRecord) :Logical;

## Параметры

**aAction** - действие, которое производится над записью картотеки (удаление, восстановление,
перемещение или копирование; перечислимый тип [ModifyActions](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ModifyActions));

**aRec** - запись, над которой производится действие;

**aGroup** - целевая группа, в которую переносится запись в случае
перемещения или копирования.

## Назначение

Изменение выделенной записи.

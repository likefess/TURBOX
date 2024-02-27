---
Link: .Ctrl.ICardFile.@DoBeforeModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция DoBeforeModify

## Описание

    func DoBeforeModify(aAction :ModifyActions;
                        aRec :Rec.IRecord; aGroup :Rec.IRecord) :Logical;

## Параметры

**aAction** - действие, которое производится над записью картотеки (удаление, восстановление,
перемещение или копирование; перечислимый тип [ModifyActions](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ModifyActions));

**aRec** - запись, над которой производится действие;

**aGroup** - целевая группа, в которую переносится запись в случае
перемещения или копирования.

## Назначение

Действие перед изменением выделенной записи.

Если функция возвращает TRUE, то тем самым разрешается выполнение действия.
Если функция вернет FALSE, выполнение действия над записью картотеки прекращается.



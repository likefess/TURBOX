# Тип TOnClickTree

## Описание

    type TOnClickTree = func(aSender :Ctrl.ICardTree;
                             aAction :ClickTypes; aRec :Rec.IRecord) :Logical;

## Параметры

**aSender** - указатель на объект класса [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default),
с которым произошло событие;

**aAction** - одна из предопределенных констант, описанных в типе [ClickTypes](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.ClickTypes),
которая определяет действие пользователя;

**aRec** - текущий документ (запись).

## Назначение

Тип TOnClick предназначен для задания функции-обработчика события,
которое происходит по щелчку мышью в объекте [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default)
или при нажатии клавиши Enter, когда фокус ввода находится в этом объекте.

Если функция возвращает True, выполняется стандартная обработка события,
иначе - не выполняется (False).

Используется для задания события [OnClick](topic:.Custom.ComClasses.Ctrl.ICardTree.OnClick)
класса [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default).

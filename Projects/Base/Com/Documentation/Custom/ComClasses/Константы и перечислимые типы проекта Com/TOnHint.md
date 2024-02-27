---
Link:.Consts.@TOnHint
---

# Тип TOnHint

## Описание

    type TOnHint = func(aSender :Ctrl.IControlCell; aContext :IContext;
                        var aText :String) :Logical

## Параметры

**aSender** - ячейка, для которой происходит вызов.

**aContext** - контекст события.

**aText** - текст подсказки.

## Назначение

Тип TOnHint предназначен для задания функции-обработчика события,
возникающего перед выводом подсказки.

Если обработчик возвращает False, текст подсказки **aText** будет изменён на указанный в функции.
В противном случае подсказка выводится без изменений.

Используется для задания события [OnHint](topic:.Custom.ComClasses.Ctrl.IControlCell.OnHint)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

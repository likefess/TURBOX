---
Link:.Consts.@TOnDraw
---

# Тип TOnDraw

## Описание

    type TOnDraw = proc(aSender :Ctrl.IControlCell; aIndex :Integer; aSelected :Logical;
                        var aColor, aCellColor :Integer; aFont :Ctrl.IFont)

## Параметры

**aSender** - ячейка, для которой происходит вызов;

**aIndex** - номер строки, если ячейка лежит в таблице.

**aSelected** - логический параметр. Если он равен True, ячейка выделена;

**aColor** - цвет фона ячейки.

**aCellColor** - цвет фона клетки шаблона.

**aFont** - шрифт.

## Назначение

Тип TOnDraw предназначен для задания процедуры-обработчика события,
возникающей перед отрисовкой ячейки.

Используется для задания события [OnDraw](topic:.Custom.ComClasses.Ctrl.IControlCell.OnDraw)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

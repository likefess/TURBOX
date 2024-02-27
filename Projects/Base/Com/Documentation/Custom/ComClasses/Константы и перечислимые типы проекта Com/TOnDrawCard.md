---
Link:.Consts.@TOnDrawCard
---

# Тип TOnDrawCard

## Описание

    type TOnDrawCard = proc(aSender :Ctrl.IControlCell; aRec :Rec.IRecord;
                            aSelected :Logical; var aColor :Integer; aFont :Ctrl.IFont)

## Параметры

**aSender** - ячейка, для которой происходит вызов.

**aRec** - запись в картотеке.

**aSelected** - логический параметр. Если он равен True, ячейка выделена.

**aColor** - цвет фона ячейки.

**aFont** - шрифт.

## Назначение

Тип TOnDrawCard предназначен для задания процедуры-обработчика события,
возникающей перед отрисовкой ячейки в строке картотеки.

Используется для задания события [OnColumnDraw](topic:.Custom.ComClasses.Ctrl.IControlCell.OnColumnDraw)
класса [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

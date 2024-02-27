# Перечислимый тип ScrollerStyles

## Описание

    type ScrollerStyles = (
      ScrollerBoth = 0
     ,ScrollerNone = 1
     ,ScrollerVert = 2
     ,ScrollerHorz = 3
    );

## Назначение

Перечислимый тип ScrollerStyles предназначен для скрытия/отображения на фрейме вертикальной
и/или горизонтальной полос прокрутки.

Перечислимый тип ScrollerStyles включает следующие константы:

**ScrollerBoth** - отображаются одновременно обе полосы;

**ScrollerNone** - не видна ни одна из полос прокрутки;

**ScrollerVert** - отображается вертикальная полоса прокрутки;

**ScrollerHorz** - отображается горизонтальная полоса прокрутки.

Константы, определенные в данном типе, используются в свойстве
[ScrollerStyle](topic:.Custom.ComClasses.Ctrl.IFrame.ScrollerStyle)
класса [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default).
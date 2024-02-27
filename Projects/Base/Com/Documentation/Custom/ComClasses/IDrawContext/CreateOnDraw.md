---
Link: .IDrawContext.@CreateOnDraw
---

[IContext](..\IContext.Default) : [IDrawContext](Default)

# Функция CreateOnDraw

## Описание

    func CreateOnDraw (aSender :Ctrl.IControlCell; aSelected :Logical; aColor :Integer; aFont :Font) :IDrawContext;

## Параметры

**aSender** - ячейка, для которой формируется контекст.

**aSelected** - равно True, если ячейка выделена.

**aColor** - цвет ячейки.

**aFont** - шрифт ячейки.

## Назначение

Создание контекста.
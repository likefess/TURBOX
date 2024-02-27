---
Link: .Ctrl.ICardTree.@OnOpenBlank
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[ICardTree](Default)

# Событие OnOpenBlank

## Описание

    OnOpenBlank :func(aAction :Com.Consts.OpeningRecordType; aRec :Rec.IRecord) :Logical;

## Параметры

**aAction** - тип события ([OpeningRecordType](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OpeningRecordType));

**aRec** - редактируемый документ (запись).

## Назначение

Обработчик события, которое происходит перед открытием бланка-редактора для текущей записи дерева картотеки.

Если функция возвращает TRUE, происходит стандартная обработка события, то есть открытие
бланка-редактора. Если функция возвращает FALSE, стандартная обработка не выполняется.
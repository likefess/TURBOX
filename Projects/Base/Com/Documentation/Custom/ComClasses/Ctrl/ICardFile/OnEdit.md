---
Link: .Ctrl.ICardFile.@OnEdit
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Функция OnEdit

## Описание

    func OnEdit(aAction :OpeningRecordType; aRec :Record) :Logical;

## Параметры

**aAction** - тип открытия записи ([OpeningRecordType](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.OpeningRecordType));

**aRec** - добавляемая запись.

## Назначение

Обработчик события, которое происходит в момент начала редактирования записи в картотеке, минуя
бланк-редактор. Иными словами, после того, как пользователь вызвал команду редактирования
или вставки записи (например, нажал кнопку Ins), но до того, как началось ее редактирование.
Функция позволяет проинициализировать требуемые поля записи или вообще запретить ее создание.

Если функция возвращает True, происходит стандартная обработка (переход в режим редактирования
или вставка новой записи) и позиционирование на нее. Если функция возвращает False,
редактирование не начинается (в случае попытки добавить новую запись, она не добавляется),
то есть для новой записи автоматически делается Cancel.

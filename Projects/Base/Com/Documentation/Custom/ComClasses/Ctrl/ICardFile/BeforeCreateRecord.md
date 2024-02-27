---
Link: .Ctrl.ICardFile.@BeforeCreateRecord
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Событие BeforeCreateRecord

## Описание

    BeforeCreateRecord :func (aIsGroup :Logical) :Logical;

## Параметры

**aIsGroup** - признак группы.

## Назначение

Обработчик события, которое происходит перед созданием записи в картотеке.

Это событие предназначено для определения класса создаваемой записи/группы
(для "гетерогенных" картотек).

Обработчик должен возвратить FALSE в случае отказа от дальнейшей стандартной обработки
и TRUE, если ее нужно продолжить.
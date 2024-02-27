---
Title: Компонент IStatic
Link: .Ctrl.IStatic
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default)

# Ctrl.IStatic

Класс *Ctrl.IStatic* используется для добавления текста на форму.

Статик - это контрол, который представляет из себя нередактируемый текст. Статик используется
для вставки текста на форму, самостоятельно или в качестве подписи других контролов.
Также при помощи Статика можно добавить на форму кнопку или гиперссылку
(используя свойство [StaticStyle](topic:.Custom.ComClasses.Ctrl.IStatic.StaticStyle)).
Текст может сопровождаться иконкой, задаваемой полем [ImageName](topic:.Custom.ComClasses.Ctrl.IControlCell.ImageName).

Наследует все свойства и методы родительского класса Ctrl.IControlCell.

Непосредственно в классе *Ctrl.IStatic* определены следующие свойства класса:
* [Константа cDefLabelWidth](cDefLabelWidth)
* [Функция CreateEx](CreateEx)

и свойства объекта:
* [Поле StaticStyle](StaticStyle)
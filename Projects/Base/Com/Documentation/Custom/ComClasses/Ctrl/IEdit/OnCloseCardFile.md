---
Link: .Ctrl.IEdit.@OnCloseCardFile
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Процедура OnCloseCardFile

## Описание

    proc OnCloseCardFile(aIndex :Integer; aSender :Frm.IForm; aModalResult :Integer);

## Параметры

**aIndex** - номер строки, если контрол лежит в таблице;

**aSender** - ссылка на закрываемую картотеку;

**aModalResult** - значение кнопки, по которой происходит закрытие.

## Назначение

Данная функция определяет действие при закрытии картотеки.

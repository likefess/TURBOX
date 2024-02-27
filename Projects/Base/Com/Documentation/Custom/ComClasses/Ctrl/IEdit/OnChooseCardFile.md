---
Link: .Ctrl.IEdit.@OnChooseCardFile
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Процедура OnChooseCardFile

## Описание

    proc OnChooseCardFile(aIndex :Integer; aSender :Frm.IForm; aValue :Variant);

## Параметры

**aIndex** - номер строки, если контрол лежит в таблице;

**aSender** - ссылка на картотеку, из которой происходит вызов;

**aValue** - выбранная запись.

## Назначение

Данная функция определяет действие при выборе записи из картотеки.

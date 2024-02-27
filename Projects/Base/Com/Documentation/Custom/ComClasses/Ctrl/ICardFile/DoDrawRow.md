---
Link: .Ctrl.ICardFile.@DoDrawRow
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Процедура DoDrawRow

## Описание

    proc DoDrawRow(aRec :Record; aSelected :Logical; var aColor :Integer;
                   var aIconName :String; {var aIconColor :Integer});

## Параметры

**aRec** - редактируемая запись (документ);

**aSelected** - логический параметр. Если он равен True, запись картотеки (строка) выделена;

**aColor** - цвет фона иконки;

**aIconName** - название иконки;

**aIconColor** - цвет иконки.

## Назначение

Рисование строки картотеки.
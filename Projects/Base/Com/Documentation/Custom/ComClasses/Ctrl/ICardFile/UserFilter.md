---
Link: .Ctrl.ICardFile.@UserFilter
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ICardFile](Default)

# Поле UserFilter

## Описание

    UserFilter :String;

## Назначение

Текущее значение пользовательского фильтра,
задающего дополнительное условие отбора документов, отображаемых в картотеке. Пользовательский
фильтр применяется к набору документов, отвечающих условию общего фильтра (свойство [Filter](topic:.Custom.ComClasses.Ctrl.ICardFile.Filter)).
Пользовательский фильтр вступает в действие, только когда поле [UseUserFilter](topic:.Custom.ComClasses.Ctrl.ICardFile.UseUserFilter)
содержит значение TRUE.



---
Link: .Ctrl.IEdit.@AutoLock
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле AutoLock

## Описание

    AutoLock :Logical;

## Назначение

Управление [соответствующим свойством](topic:kernel.Программирование.Классы.Объекты.Шаблоны.Клетка.АвтоблокировкаAutolock)
[TemplateCell](topic:kernel.Программирование.Классы.Объекты.Шаблоны.Клетка.Default).
Для web-клиента значение игнорируется. По-умолчанию свойство равно True,
если поле ввода связано с полем/переменной (IField, IVar и т.п.) записи/структуры,
в остальных случаях умолчание равно False.
---
Link: .Ctrl.IEdit.@UseMacro
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Поле UseMacro

## Описание

    UseMacro :Logical;

## Назначение

Управление [соответствующим свойством](topic:kernel.Программирование.Классы.Объекты.Шаблоны.Клетка.МакросыUseMacro)
[TemplateCell](topic:kernel.Программирование.Классы.Объекты.Шаблоны.Клетка.Default).
Определяет, разрешено ли в поле ввода использовать макросы.
Если значение свойства равно True, то любая последовательность символов,
отвечающая синтаксису записи макросов, будет интерпретироваться системой как макрос
(т.е. изменять способ отображения сопутствующего текста).
Если значение свойства равно False, весь текст выводится непосредственнов том виде,
в каком он представлен в поле ввода.

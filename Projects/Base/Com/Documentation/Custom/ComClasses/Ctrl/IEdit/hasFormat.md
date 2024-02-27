---
Link: .Ctrl.IEdit.@hasFormat
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция hasFormat

## Описание

    func hasFormat :Logical;

## Назначение

Данная функция определяет наличия форматирования вывода значения.

Возвращает True, если
* в поле установлен обработчик события [OnOutput](topic:.Custom.ComClasses.Ctrl.IControlCell.OnOutput);
* значение поля имеет тип даты;
* значение поля целого или числового типа и установлено свойство [FieldFormat](topic:.Custom.ComClasses.Ctrl.IEdit.FieldFormat).
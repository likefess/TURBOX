---
Link: .Ctrl.IEdit.@GetDateFormat
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция GetDateFormat

## Описание

    func GetDateFormat :string;

## Назначение

Данная функция позволяет узнать формат даты, заданный для поля ввода, ([FormatOfDate](topic:.Custom.ComClasses.Ctrl.IEdit.FormatOfDate))
в виде строки [форматного преобразования](topic:kernel.Программирование.ТБСкрипт.ТипыДанных.Формат). А именно:

* DateOnly    - "dd.mm.yyyy";
* TimeOnly    - "hh:nn:ss";
* DateAndTime - "dd.mm.yyyy hh:nn:ss".


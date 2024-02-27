---
Link: .Ctrl.IEdit.@GetAutocompleteList
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция GetAutocompleteList

## Описание

    func GetAutocompleteList(aMask :String; aIndex :Integer;
                             aLimit :Integer = AutocompleteLimit) :List;

## Параметры

**aMask** - маска, по которой подбирается значение;

**aIndex** -  номер строки, если контрол лежит в таблице;

**aLimit** - предельно допустимое количество записей в выпадающем списке.

## Назначение

Получение списка для автозаполнения поля ввода.
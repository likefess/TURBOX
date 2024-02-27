---
Link: .Ctrl.IEdit.@AutocompleteRecords
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Процедура AutocompleteRecords

## Описание

    proc AutocompleteRecords(aMask :String; var aRecs :Record[]; aLimit :Integer);

## Параметры

**aMask** - маска, по которой подбирается значение;

**aRecs** - массив подобранных записей;

**aLimit** - предельно допустимое количество записей в выпадающем списке.

## Назначение

Подбор записей для автозаполнения поля ввода. Подобранные записи будут
расположены в массиве aRecs.
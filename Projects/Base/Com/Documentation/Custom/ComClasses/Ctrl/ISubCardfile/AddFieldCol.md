---
Link: Com.Ctrl.ISubCardfile.@AddFieldCol
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.ICardBase](topic:Com.Custom.ComClasses.Ctrl.ICardBase.Default) :
[Ctrl.ISubCardfile](Default)

# Функция AddFieldCol

## Описание

    func AddFieldCol(aField :Fld.IValue; {aCaption :String}; {aWidth :Numeric};
                     {aCellFormat :CellFormats}; {aLookupField :String}) :Ctrl.IControlCell;

## Параметры

**aField** - переменная, которая редактируется или отображается в колонке,
объект класса [Fld.IValue](topic:Com.Custom.ComClasses.Fld.IValue.Default).

**aCaption** - заголовок.

**aWidth** - ширина.

**aCellFormat** - формат ячейки, константа типа [CellFormats](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CellFormats).

**aLookupField** - если в **aField** указан документ, то имя просматриваемого поля документа.

## Назначение

Добавление колонки.

Возвращает ссылку на добавленный элемент.
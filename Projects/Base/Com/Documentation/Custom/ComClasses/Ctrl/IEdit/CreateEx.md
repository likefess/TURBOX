---
Link: .Ctrl.IEdit.@CreateEx
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IEdit](Default)

# Функция CreateEx

## Описание

    func CreateEx( aName :String = ''; aWidth :Numeric; aCaption :String;
                   aCellFormat :consts.CellFormats; aValueType :VarTypes = VarUnknown;
                   aField :Fld.IValue = nil; aLookupField :String = '' ) :Ctrl.IEdit;

## Параметры

**aName** - имя создаваемого поля ввода;

**aWidth** - ширина поля;

**aCaption** - заголовок поля;

**aCellFormat** - формат клетки ([CellFormats](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.CellFormats));

**aValueType** - тип значения ([Типы ТипыДанных / VarTypes](topic:kernel.Программирование.Классы.System.Прочие.ТипыДанныхVarTypes));

**aField** - переменная, которая редактируется или отображается полем ввода;

**aLookupField** - поле aField'а .

## Назначение

Создание поля ввода с заданными параметрами.
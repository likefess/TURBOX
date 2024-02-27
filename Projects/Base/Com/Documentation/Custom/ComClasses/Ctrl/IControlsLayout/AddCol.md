---
Link: Com.Ctrl.IControlsLayout.@AddCol
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](Default)

# Функция AddCol

## Описание

    func AddCol(aLabel :String; {aWidth :Numeric}; {aType :VarTypes}; aFieldName :String;
                {aLookupName :String}; {aCardFileClass :Frm.ICardForm}) :Ctrl.IControlCell;

## Параметры

**aLabel** - название колонки.

**aWidth** - ширина.

**aType** - тип значения, константа типа [VarTypes](topic:kernel.Программирование.Классы.System.Прочие.ТипыДанныхVarTypes).

**aFieldName** - название переменной, которая редактируется или отображается в колонке.

**aLookupName** - если в **aFieldName** указан документ, то имя просматриваемого поля документа.

**aCardFileClass** - связанная картотека.

## Назначение

Добавление в таблицу колонки, содержащей
[контрол на основе ячеек](topic:.Custom.ComClasses.Ctrl.IControlCell.Default).

Возвращает ссылку на добавленный элемент.
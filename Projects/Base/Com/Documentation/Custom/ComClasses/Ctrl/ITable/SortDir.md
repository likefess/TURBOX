---
Link: .Ctrl.ITable.@SortDir
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.ITable](Default)

# Функция SortDir

## Описание

    func SortDir(aSortOrder :String; aCtrl :Ctrl.IControl; {var aFieldName :String}) :String;

## Параметры

**aSortOrder** - порядок сортировки.

**aCtrl** - столбец, по которому происходит сортировка.

**aFieldName** - возвращает строку сортировки столбца aCtrl.

## Назначение

Определение направления сортировки по указанному столбцу.

Направление сортировки (прямая/обратная) определяется для строка сортировки контрола aCtrl
по порядку сортировки, указанному в aSortOrder.

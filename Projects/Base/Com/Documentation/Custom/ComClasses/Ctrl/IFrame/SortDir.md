---
Link: .Ctrl.IFrame.@SortDir
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Функция SortDir

## Описание

    func SortDir(aSortOrder :String; aCtrl :Ctrl.IControl; {var aFieldName :String}) :String;

## Параметры

**aSortOrder** - порядок сортировки.

**aCtrl** - сортируемый контрол.

**aFieldName** - поле сортировки.

## Назначение

Определение направления (прямая/обратная) для поля сортировки контрола aCtrl по порядку
сортировки, указанному в aSortOrder.
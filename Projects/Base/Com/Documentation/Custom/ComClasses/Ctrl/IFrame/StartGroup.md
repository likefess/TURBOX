---
Link: .Ctrl.IFrame.@StartGroup
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlsGroup](topic:Com.Custom.ComClasses.Ctrl.IControlsGroup.Default) :
[Ctrl.IControlsLayout](topic:Com.Custom.ComClasses.Ctrl.IControlsLayout.Default) :
[Ctrl.IFrame](Default)

# Процедура StartGroup

## Описание

    proc StartGroup({aLayout :Integer}; {aLabWidth :Integer}; {aFieldWidth :Integer});

## Параметры

**aLayout** - тип расположения контролов. Принимает следующие значения:

* 1 - поведение зависит от используемой функции AddXXX (значение по умолчанию);
* 2 - контролы располагаются в строку, перевод строк вставляется вручную;
* 3 - контролы заполняют клетки группы, по достижении последней клетки делается
      автоматический перевод на новую строку. Удобно для регулярных групп.

**aLabWidth** - ширина надписи.

**aFieldWidth** - ширина поля.

## Назначение

Инициализирует логическую группу контролов, имеющих примерно одинаковую раскладку,
чтобы избежать задания ширин и других атрибутов при создании каждого контрола.

Настройки сбрасываются процедурой [StopGroup](StopGroup).
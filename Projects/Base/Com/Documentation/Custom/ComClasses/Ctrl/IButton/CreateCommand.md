---
Link: .Ctrl.IButton.@CreateCommand
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default) :
[Ctrl.IButton](Default)

# Функция CreateCommand

## Описание

    func CreateCommand(aCommandName :String; {aOnClick :TOnClick}; {aIconName :String};
                       {aDescription :String}; {aTag :Variant}) :Ctrl.IButton;

## Параметры

**aCommandName** - название команды, выполняющейся при нажатии.

**aOnClick** - обработчик события, происходящего при нажатии.
Тип обработчика - [TOnClick](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnClick).

**aIconName** - иконка.

**aDescription** - надпись на кнопке.

**aTag** - метка.

## Назначение

Создание кнопки с заданной командой.

## <p style="color:red">Внимание</p>

Свойство будет удалено в версиях выше 10.5.1. Используйте метод [CreateSmall](CreateSmall).
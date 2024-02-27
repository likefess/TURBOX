---
Link: .Ctrl.IJSControl.@LoadCssFile
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[IJSControl](Default)

# Процедура LoadCssFile

## Описание

    proc LoadCssFile (aProject :String; aFile :String);

## Параметры

**aProject** - проект, в котором находится файл **aFile**.

**aFile** - загружаемый css-файл.

## Назначение

Загрузка css-файла и внедрение его в конец тега *head* js-скрипта.
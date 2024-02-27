---
Link: .Recovery.MassUpdates.File.@FileName
---

[Recovery]  (topic:.Custom.BasClasses.Recovery.Default) :
[Group]     (topic:.Custom.BasClasses.Recovery.Group.Default) :
[Method]    (topic:.Custom.BasClasses.Recovery.Method.Default) :
[MassUpdate](topic:.Custom.BasClasses.Recovery.MassUpdates.Default) :
[File]      (topic:.Custom.BasClasses.Recovery.MassUpdates.File.Default)

# Поле FileName

## Описание

    FileName :String;

## Назначение

Имя загружаемого файла в формате "Bas.DataLoading1.tbc", "Ref.DataLoading2.tbc",
"%Projects%\Base\Bas\Attachment\DataLoading1.tbc" или с использованием прямого пути "...\Turbo\Projects\Base\Bas\Attachment\Ref\DataLoading3.tbc":

- если имя задается в формате "Bas.DataLoading1.tbc" или "Ref.DataLoading2.tbc",
то файл должен находиться в [группе объектов проекта](topic:kernel.Программирование.Проекты.РедакторПроекта.ОкноРедактора)
типа ["Приложения" ("Attachments")](topic:kernel.Программирование.Проекты.РедакторПроекта.ДобавитьГруппу)..

- если имя задается в коротком формате "Ref.DataLoading2.tbc", то необходимо заполнить поле [имя проекта](ProjectName), в котором находится файл.

- если имя задается в формате "%Projects%\Base\Bas\Attachment\DataLoading1.tbc" или "...\Turbo\Projects\Base\Bas\Attachment\Ref\DataLoading3.tbc",
то, при необходимости версионной обработки, необходимо заполнить поля [имя проекта](ProjectName) и [номер версии](ExecuteVersion).
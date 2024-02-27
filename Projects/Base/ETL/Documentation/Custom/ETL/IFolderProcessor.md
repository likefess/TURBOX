---
Keywords: IFolderProcessor
---

#Класс IFolderProcessor - процессор соответствия полей (загрузка)


Интерфейс IFolderProcessor является наследником интерфейса [**IProcessor**](topic:Integration.Custom.Integration.IProcessor.IProcessor)
и служит базовым интерфейсом для процессоров, осуществляющих файловые операции.


##Методы
Используются все методы, определенные в интерфейсе [**IProcessor**](topic:Integration.Custom.Integration.IProcessor.IProcessor).
* Добавлен метод **ShowFileList(aFileList: String[]*)** - вывод списка имён найденных файлов в панель сообщений.

##Наследники
* [IFolderScan](IFolderScan "Процессор IFolderScan")
* [IFileDelRun](IFileDelRun "Процессор IFileDelRun")
* [IFileMoveCopyUnArch](IFileMoveCopyUnArch "Процессор IFileMoveCopyUnArch")


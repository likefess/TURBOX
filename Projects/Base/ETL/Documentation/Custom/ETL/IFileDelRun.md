﻿---
Keywords: IFileDelRun
---

#Класс IFileDelRun - удаление/запуск файла

Интерфейс IFileDelRun является наследником интерфейса [IFolderProcessor](IFolderProcessor "Интерфейс IFolderProcessor") и служит для таких файловых операций,
как удаление или запуск файлов(исполняемого файла, который требуется запустить, или название файла другого типа, который требуется загрузить в приложение,
ассоциированное с данным типом). Можно указать как полный путь к файлу, так и одно название файла. В последнем случае программа просматривает каталоги компьютера,
где по умолчанию следует искать файлы, для которых не задан полный путь (т.е. текущий рабочий каталог программы Студия, каталог Windows, системный каталог Windows,
каталоги, упомянутые в переменной окружения PATH).



###Примечание
Для интерфейса определён атрибут **#Attr FileOperationsProcessor = True** для указания принадлежности процессора к типу "файловые операции".

##Методы
Используются все методы, определенные в интерфейсе [**IFolderProcessor**](IFolderProcessor "Интерфейс IFolderProcessor").

## Свойства
* **aAction** (Integer) - выбор действия. Удалить/запустить файл;
* **aVarValue** (Integer) - выбор метода ввода входного параметра. Через указание названия папки и маски, либо через переменную интеграционного пакета.
* **aInParameter** (Rec.ETLParameters)  - переменная для хранения имени  файла.
* **aSourceName** (String) - задаёт название папки
* **aFileMask** (String) - маска файлов. По умолчанию \*.* (поиск всех файлов).



##Атрибуты свойств
* **UserName** - для отображения названия свойства на форме, указанного в атрибуте;
* **Folder = True** - служит признаком для открытия на форме дерева каталогов для выбора исходной папки;
* **FillListFunction = 'SomeAction'** - к свойству применяется метод **SomeAction** для заполнения выпадающего списка на форме;
* **VariableSetter = True** - устанавливает флаг, позволяющий выбирать между использованием переменной или значениями параметров на форме (см. аттрибуты **isVariable** и **isValue**);
* **isVariable = True** - указывает на то, что свойство является переменной интеграционного пакета;
* **isValue = True** - указывает на то, что свойство является значением интеграционного пакета.






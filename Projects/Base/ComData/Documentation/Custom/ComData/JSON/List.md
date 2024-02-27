---
Keywords: JSON,List
---

# Компонент JSON.List

Компонент **JSON.List** реализует интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для работы со списками JSON.

## Вложенные компоненты
Компонент поддерживает следующие вложенные компоненты:

* **JSON.List** - определяет, что элементом списка будет вложенный список.
* [JSON.Object](Object "Компонент JSON.Object") - определяет, что элементом списка, будет вложенный список JSON-объектов или единичный JSON-объект.
* [JSON.ValueList](ValueList "Компонент JSON.ValueList") - определяет, что элементом списка будет вложенный список простых данных JSON.
* [IDataField](..\IDataField "Компонент IDataField") - определяет, что элементом списка будет единичный элемент данных, не являющихся JSON-объектом.

## Сценарии использования
Для компонента **JSON.List** применимы все сценарии использования, описанные для интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

### Чтение данных двух вложенных списков в формате JSON

Рассмотрим выполнение этих задач на примере структуры JSON, состоящей из двух вложенных списков

    [[1,2,"text",{"name":"sample","amount":12345.12}],[3,4],[5]]
   
В примере используется компонентный класс **DoubleList**, определенный в описании [компонентов для работы с JSON](Default "Компоненты для работы с JSON").

    var vJSONList : Data.DoubleList = Data.DoubleList.Create;
    
    vJSONList.StringValue = '[[1,2,"text",{"name":"sample","amount":12345.12}],[3,4],[5]]';

    vJSONList.select;
    while not vJSONList.EOF do

      vJSONList.InternalList.select;
      while not vJSONList.InternalList.EOF do
        var vValue : Variant = vJSONList.InternalList_Value.Value;        

        vJSONList.InternalList.next;
      end;      
      vJSONList.next;
    end;       
    
## Типы

Используются все типы, определенные в интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены типы

* **MaxOccurenceEnum** (Once, Unlimited).
* **CreateIntends (Logical)** - определяет будут ли при формировании текстового представления создаваться отступы.

## Конструкторы

* **CreateEx (aName : String) : JSON.List** - создает объект класса **JSON.List** с указанием имени компонента равным **aName**.

## Свойства

Используются все свойства, определенные в интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены свойства

* **MaxOccurence (MaxOccurenceEnum)** - указывает, определяет ли компонент единичное значение (**Once**) или список элементов (**Unlimited**).
* **StringValue (String)** - при установке свойства в компонент загружается JSON-строка, при чтении свойства позволяет получить содержимое компонента в виде JSON-строки.
 
## Методы

Используются все методы, определенные в интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены методы

* **LoadFromFile(aFileName : String)** - загружает в компонент JSON-строку из указанного файла.
* **SaveToFile(aFileName : String)** - сохраняет содержимое компонента в указанный файл в виде JSON-строки.
* **LoadData(aJSONList : JSON.List)** - перезаписывает содержимое текущего списка содержимым **aJSONList**.

## Наследники

* [JSON.Object](Object "Компонент JSON.Object")
* [JSON.ValueList](ValueList "Компонент JSON.ValueList")
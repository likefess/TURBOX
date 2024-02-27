---
Keywords: JSON,Object
---

# Компонент JSON.Object

Компонент **JSON.Object** является наследником компонента [JSON.List](List "Компонент JSON.List") и реализует интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для работы со списками JSON-объектов.

## Вложенные компоненты

Компонент поддерживает следующие вложенные компоненты:

* [JSON.List](List "Компонент JSON.List") - определяет поле JSON-объекта, значение которого является списком.
* **JSON.Object** - определяет поле JSON-объекта, значение которого является список JSON-объектов или единичный JSON-объект.
* [JSON.ValueList](ValueList "Компонент JSON.ValueList") - определяет поле JSON-объекта, значение которого является списком простых данных JSON.
* [IDataField](..\IDataField "Компонент IDataField") - определяет поле JSON-объекта, значение которого является единичным элемент простых данных JSON.

## Сценарии использования

Для компонента **JSON.Object** применимы все сценарии использования, описанные для интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

### Формирование JSON-объекта

Рассмотрим выполнение этой задач на примере формирования следующей JSON-строки

    [{
      "receivers" : ["email@example.com","email2@example.com"],
      "sender" : "noreply@example.com",
      "subject" : "Test",
      "textBody" : "Test Email"
    }]

В примере используется компонентный класс **EmailMessage**, определенный в описании [компонентов для работы с JSON](Default "Компоненты для работы с JSON").

    var vEmailMessage : Data.EmailMessage = Data.EmailMessage.Create;

    vEmailMessage.Add;
    with vEmailMessage.Receivers do
      Add;
      Value = "email@example.com";
      Post;
      Add;
      Value = "email2@example.com";
      Post;
    end;
    vEmailMessage.Sender.Value   = "noreply@example.com";
    vEmailMessage.Subject.Value  = "Test";
    vEmailMessage.TextBody.Value = "Test Email";
    vEmailMessage.Post;

## Типы

Используются типы, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Конструкторы

Используются конструкторы, определенные в компоненте [JSON.List](List "Компонент JSON.List").

## Свойства

Используются свойства, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").
 
## Методы

Используются все методы, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены методы:

* **TransferData(aJSONObject : JSON.Object)** - заполняет элемент данных в текущей позиции курсора значением элемента данных, в текущей позиции курсора **aJSONObject**.
---
Keywords: JSON,ValueList
---

# Компонент JSON.ValueList

Компонент **JSON.ValueList** является наследником компонента [JSON.List](List "Компонент JSON.List") и реализует интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для работы со списками простых значений в формате JSON.

В отличие от компонента [JSON.List](List "Компонент JSON.List") в компоненте **JSON.ValueList** реализован интерфейс доступа к значениям, которые находятся в списке. В результате компонент **JSON.ValueList** используется как компонент нижнего уровня при описании структуры JSON, не содержащий вложенных компонентов.

## Сценарии использования
Для компонента **JSON.ValueList** применимы все сценарии использования, описанные для интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

### Чтение данных JSON-списка

Рассмотрим выполнение этой задачи на примере следующей JSON-строки

    [1,2,"text",{"name":"sample","amount":12345.12}]

В рамках этого сценария осуществляется чтение данных из JSON-строки. .

    var vJSONList : JSON.ValueList = JSON.ValueList.Create;
    
    vJSONList.StringValue = '[1,2,"text",{"name":"sample","amount":12345.12}]';

    vJSONList.select;
      var vValue: Variant = vJSONList.Value;

      vJSONList.next;
    end;       
    
## Типы

Используются типы, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Конструкторы

Используются конструкторы, определенные в компоненте [JSON.List](List "Компонент JSON.List").

## Свойства

Используются все свойства, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены свойства:

* **ValueType (VarTypes)** - указывает тип данных, содержащийся в списке. Значение по умолчанию: **VarVariant**.
* **Value (Variant)** - предоставляет интерфейс для чтения и установки значения списка.
 
## Методы

Используются методы, определенные в компоненте [JSON.List](List "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").
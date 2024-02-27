---
Keywords: XML,Field
---

# Компонент XML.Field

Компонент **XML.Field** является наследником компонента [XML.Data](Data "Компонент XML.Data") и реализует интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для работы со узлами XML документов, содержащими текстовый узел.

Для работы с содержимым текстового узла компонент содержит свойство **Value**. Также для компонента **XML.Field** свойство **MaxOccurence** по умолчанию установлено в **Once**. 

## Вложенные компоненты

Компонент поддерживает те же вложенные компоненты, что и компонент [XML.Data](Data "Компонент XML.Data").

## Сценарии использования

Для компонента **XML.Field** применимы все сценарии использования, описанные для интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

### Формирование XML документа

Рассмотрим выполнение этой задач на примере формирования следующего XML-документа

    <Table>
      <Record>
        <Code>Code1</Code>
        <Name>Name1</Name>
      </Record>
      <Record>
        <Code>Code2</Code>
        <Name>Name2</Name>
      </Record>
    </Table>

В примере используется компонентный класс **XMLTable**, определенный в описании [компонентов для работы с XML](Default "Компоненты для работы с XML").

    var vXMLTable : Data.XMLTable = Data.XMLTable.Create;

    vXMLTable.Add;

    vXMLTable.Record.Add;
    vXMLTable.Record_Code.Value = 'Code1';
    vXMLTable.Record_Name.Value = 'Name1';    
    vXMLTable.Record.Post;

    vXMLTable.Record.Add;
    vXMLTable.Record_Code.Value = 'Code2';    
    vXMLTable.Record_Name.Value = 'Name2';
    vXMLTable.Record.Post;    
    
    vXMLTable.Post;
    
## Типы

Используются типы, определенные в компоненте [XML.Data](Data "Компонент XML.Data") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Конструкторы

Используются конструкторы, определенные в компоненте [XML.Data](Data "Компонент XML.Data").

## Свойства

Используются все свойства, определенные в компоненте [XML.Data](Data "Компонент XML.Data") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены свойства:

* **ValueType (VarTypes)** - указывает тип данных, содержащийся в текстовом узле.
* **Value (Variant)** - предоставляет интерфейс для чтения и установки значения текстового узла.
  В случае если в структуре компонентного класса указано, что компонент **XML.Field** встречается один раз,
  то использование вызовов интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для чтения и создания узла не обязательно.
 
## Методы

Используются методы, определенные в компоненте [XML.Data](Data "Компонент XML.Data") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").
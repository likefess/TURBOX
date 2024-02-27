---
Keywords: XML,Data
---

# Компонент XML.Data

Компонент **XML.Data** является наследником компонента [JSON.Object](..\JSON.Object "Компонент JSON.Object") и реализует интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для работы со узлами XML документов.

## Вложенные компоненты

Компонент поддерживает следующие вложенные компоненты:

* **XML.Data** - определяет вложенный узел XML документа.
* [XML.Field](Field "Компонент XML.Field") - определяет вложенный узел XML документа, содержащий текстовый узел.
* [XML.Attribute](Attribute "Компонент XML.Attribute") - определяет атрибут текущего узла XML документа.
* [XML.Namespace](Namespace "Компонент XML.Namespace") - определяет пространство имен XML документа, которое используется в текущем узле XML документа или вложенных компонентах.

## Сценарии использования

Для компонента **XML.Data** применимы все сценарии использования, описанные для интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

### Чтение XML документа

Рассмотрим выполнение этой задач на примере формирования следующего XML-документа

    <Table>
      <Record Code = "Code1" Name = "Name1"/>
      <Record Code = "Code2" Name = "Name2"/>
    </Table>

В примере используется компонентный класс **XMLTable2**, определенный в описании [компонентов для работы с XML](Default "Компоненты для работы с XML").

    var vXMLTable : Data.XMLTable2 = Data.XMLTable2.Create;

    vXMLTable.StringValue = '<Table><Record Code = "Code1" Name = "Name1"/><Record Code = "Code2" Name = "Name2"/></Table>';

    vXMLTable.select;
    vXMLTable.Record.select;
    while not vXMLTable.Record.EOF do
      var vCode : String = vXMLTable.Record_Code.Value;
      var vName : String = vXMLTable.Record_Name.Value;
     
      vXMLTable.Record.next;
    end;
    
## Типы

Используются типы, определенные в компоненте [JSON.Object](..\JSON.Object "Компонент JSON.Object") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Конструкторы

Используются конструкторы, определенные в компоненте [JSON.Object](..\JSON.Object "Компонент JSON.Object").

## Свойства

Используются все свойства, определенные в компоненте [JSON.Object](..\JSON.Object "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Также добавлены свойства:

* **Prefix (String)** - локальное имя пространства имен XML документа.
* **NodeName (String)** - имя узла XML документа.
 
## Методы

Используются все методы, определенные в компоненте [JSON.Object](..\JSON.Object "Компонент JSON.List") и интерфейсе [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

Следующие методы изменены:

* **AddField( aName :String; aFieldName :String = ''; aType : VarTypes) :XML.Attribute** - добавляет в текущий узел компонент [XML.Attribute](Attribute "Компонент XML.Attribute"), где **aName** - внутреннее имя компонента, **aFieldName** - имя атрибута, **aType** - тип данных значения атрибута.

Также добавлены методы:

* **AddXMLField( aName :String; aFieldName :String = ''; aType : VarTypes) :XML.Field** - добавляет в текущий узел компонент [XML.Field](Field "Компонент XML.Field"), где **aName** - внутреннее имя компонента, **aFieldName** - имя узла XML документа, **aType** - тип данных, содержащихся в текстовом узле.

## Наследники

* [XML.Field](Field "Компонент XML.Field")
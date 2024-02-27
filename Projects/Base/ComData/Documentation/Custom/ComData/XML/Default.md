---
Keywords: XML
---

# Компоненты для работы с XML

Работа с данными в формате XML осуществляется на основе встроенной в платформу возможности превратить XML-строку
в объект Storage, который содержит вложенные элементы List и Storage. Компоненты для работы с XML основаны на
[компонентах для работы с JSON](..\JSON.Default "Компоненты для работы с JSON") и предоставляют интерфейс к объекту Storage
на основе интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Предполагается, что компоненты XML используются,
когда структура XML заранее определена и не меняется в процессе работы с данными. При этом определение структуры
может быть сколь угодно сложным в рамках спецификации XML.

Работа с XML документами разбивается на три задачи: 

* создание компонентного класса, содержащего описание структуры XML документа;
* загрузка и выгрузка XML-строки или файла в объект компонентного класса;
* чтение или запись данных, используя методы интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Определение структуры XML документа при помощи компонентов

### Общие принципы определения структуры

При работе с XML документом при помощи компонентов выделяются следующие элементы структуры:

* [XML.Data](Data "Компонент XML.Data") - узел XML документа. Может содержать другие узлы, атрибуты и определения пространства имен.
* [XML.Field](Field "Компонент XML.Field") - узел XML документа, который содержит текстовый узел. Также может содержать другие узлы, атрибуты и определения пространства имен.
* [XML.Attribute](Attribute "Компонент XML.Attribute") - атрибут узла XML документа. Является конечным элементов в XML структуре и не содержит других компонентов.
* [XML.Namespace](Namespace "Компонент XML.Namespace") - определение пространства имен XML документа. Является конечным элементом в XML структуре и не содержит других компонентов.

Компоненты [XML.Data](Data "Компонент XML.Data") и [XML.Field](Field "Компонент XML.Field") унаследовали у [компонентов для работы с JSON](..\JSON.Default "Компоненты для работы с JSON") свойство **MaxOccurence**, которое определяет, включается ли текущий узел в структуру XML документа как единичный узел или как несколько однотипных узлов. Значение по умолчанию **Unlimited** свойства **MaxOccurence** соответствует возможности иметь несколько однотипных узлов. Для добавления в структуру единичного узла необходимо установить для свойства **MaxOccurence** значение **Once**.

Как и с прочими компонентными классами структура XML документа на основе компонентов может задаваться в коде компонентного класса в процедуре **Init** или определяться в ресурсном файле при помощи визуального редактора. Сравнить эти варианты задания структуры на основе компонентных классов проекта **ComData** можно в описании к компоненту [CSVTable](..\CSVTable "Компонент CSVTable")

### Примеры формирования структуры

В рассмотренных ниже примерах будет показано как на основе структуры XML документа формируется структура компонентных классов. В данных примерах структура будет определяться в коде компонентного класса в процедуре **Init**.

#### Вложенные узлы XML

Рассмотрим формирование структуры компонентного класса на основе структуры XML документа, отражающей содержимое таблицы базы данных с полями **Code** и **Name**.

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

Определение такой структуры осуществляется при помощи следующей иерархии компонентных классов

* [XML.Data](Data "Компонент XML.Data")("Table")
    * [XML.Data](Data "Компонент XML.Data")("Record")
        * [XML.Field](Field "Компонент XML.Field")("Code)
        * [XML.Field](Field "Компонент XML.Field")("Name");

**XMLTable.cod**

    class inherited ComData.XML.Data "XML Table";
    
    import ComData;

    inobject public

      Record      : XML.Data;
      Record_Code : XML.Field;
      Record_Name : XML.Field;

    inobject private

      #Override;
      proc Init;
        inherited Init;

        NodeName = 'Table';
        MaxOccurence = Once;    

        Record = AddComp(XML.Data.CreateEx('Record'));
        Record.NodeName = 'Record';

        Record_Code = Record.AddXMLField('Record_Code','Code',varString);
        Record_Name = Record.AddXMLField('Record_Name','Name',varString);

      end;

    end   

Ключевые моменты, на которые необходимо обратить внимание:

* Для корневого узла **MaxOccurence** устанавливается равным **Once**, т.к. не предполагается, что у нас может быть несколько корневых узлов.
* Узлы **Code** и **Name** содержат текстовый узел, поэтому для их определения используется компонент [XML.Field](Field "Компонент XML.Field").

#### Атрибуты XML

Рассмотрим тот же сценарий структуры XML документа, отражающей содержимое таблицы базы данных, но в текущей сценарии поля таблицы **Code** и **Name** отражаются в виде атрибутов.

    <Table>
      <Record Code = "Code1" Name = "Name1"/>
      <Record Code = "Code2" Name = "Name2"/>
    </Table>

Определение такой структуры осуществляется при помощи следующей иерархии компонентных классов

* [XML.Data](Data "Компонент XML.Data")("Table")
    * [XML.Data](Data "Компонент XML.Data")("Record")
        * [XML.Attribute](Attribute "Компонент XML.Attribute")("Code")
        * [XML.Attribute](Attribute "Компонент XML.Attribute")("Name");

**XMLTable2.cod**

     class inherited ComData.XML.Data "XML Table";

     import ComData;

     inobject public

       Record      : XML.Data;
       Record_Code : XML.Attribute;
       Record_Name : XML.Attribute;

     inobject private

       #Override;
       proc Init;
         inherited Init;

         MaxOccurence = Once;

         Record = AddComp(XML.Data.CreateEx('Record'));
         Record.NodeName = 'Record';

         Record_Code = Record.AddField('Record_Code','Code',varString);
         Record_Name = Record.AddField('Record_Name','Name',varString);

       end;

     end    

Ключевой момент, на который хотелось бы обратить внимание, что несмотря на существенное изменение структуры XML документа по сравнению с предыдущим сценарием, определение структуры компонентного класса не претерпело существенных изменений. Для замены в структуре [XML.Field](Field "Компонент XML.Field") на [XML.Attribute](Attribute "Компонент XML.Attribute") потребовалось только заменить функцию **AddXMLField** на **AddField** с теми же параметрами.

#### Пространства имен

Рассмотрим тот же сценарий формирование структуры XML документа для отражения содержимого таблицы базы данных, но в это раз поле таблицы **Code** будет относится к пространству имен "base", а поле **Name** к пространству имен "record"

    <rec:Table xmls:rec="record" xmls:bas="base"> 
      <rec:Record>
        <bas:Code>Code1</bas:Code>
        <rec:Name>Name1</rec:Name>
      </rec:Record>
      <rec:Record>
        <bas:Code>Code2</bas:Code>
        <rec:Name>Name2</rec:Name>
      </rec:Record>
    </rec:Table>

Для реализации данного сценария в корневой компонент мы добавим два компонента определения пространства имен, а для вложенных компонентов укажем к какому пространству имен они относятся

* [XML.Data](Data "Компонент XML.Data")("Table")
    * [XML.Namespace](Namespace "Компонент XML.Namespace")("record")
    * [XML.Namespace](Namespace "Компонент XML.Namespace")("base")
    * [XML.Data](Data "Компонент XML.Data")("Record")
        * [XML.Field](Field "Компонент XML.Field")("Code)
        * [XML.Field](Field "Компонент XML.Field")("Name");

**XMLTable3.cod**

    class inherited ComData.XML.Data "XML Table";

    import ComData;

    inobject public

      Record      : XML.Data;
      NS_record   : XML.Namespace;
      NS_base     : XML.Namespace;
      Record_Code : XML.Field;
      Record_Name : XML.Field;

    inobject private

      #Override;
      proc Init;
        inherited Init;

        NodeName = 'Table';
        Prefix   = 'rec';
        MaxOccurence = Once;

        NS_record = AddComp(XML.Namespace.Create);
        NS_record.Prefix = 'rec';
        NS_record.URI    = 'record';

        NS_record = AddComp(XML.Namespace.Create);
        NS_record.Prefix = 'bas';
        NS_record.URI    = 'base';

        Record = AddComp(XML.Data.CreateEx('Record'));
        Record.NodeName = 'Record';
        Record.Prefix   = 'rec';

        Record_Code = Record.AddXMLField('Record_Code','Code',varString);
        Record_Code.Prefix = 'bas';
        Record_Name = Record.AddXMLField('Record_Name','Name',varString);
        Record_Name.Prefix = 'rec';

      end;

    end

Ключевые особенности определения пространств имен в XML структуре документа:

* Определение компонента пространства имен [XML.Namespace](Namespace "Компонент XML.Namespace") содержит **URI** - название пространства имен и **Prefix** - локальное имя пространства имен, которое будет использоваться в определении пространства имен узлов XML документа. Действия локального имени распространяется на текущий узел и все вложенные узлы.
*  Локальное имя пространства имен указывается в свойстве **Prefix** соответствующего узла. 

## Загрузка и выгрузка XML-строки или файла в объект компонентного класса

Загрузка и выгрузка XML-строки в объект компонентного класса осуществляется при помощи свойства **StringValue**, унаследованного у компонента [JSON.List](..\JSON.List "Компонент JSON.List"). В случае использования вложенных компонентов обращение к **StringValue** возможно на любом уровне иерархии, при этом загрузка и выгрузка осуществляется только с этого уровня иерархии.

Содержимое XML-файла можно загрузить или выгрузить в объект компонентного класса при помощи функций **LoadFromFile(aFileName : String)** и **SaveToFile(aFileName : String)**. Как и в случае с прямым обращением к **StringValue** эти функции работают на любом уровне иерархии структуры компонентов.

Пример загрузки XML-строки в объект компонентного класса **XMLTable** определенный выше

    var vXMLTable : Data.XMLTable = Data.XMLTable.Create;
    vXMLTable.StringValue = '<Table><Record><Code>Code1</Code><Name>Name1</Name></Record></Table>';

Пример выгрузки XML-строки из объекта класса **XMLTable**

    var vXMLTable : Data.XMLTable = Data.XMLTable.Create;
    --Выполнение действий по заполнению vXMLTable
    var vXMLString : String = vXMLTable.StringValue;


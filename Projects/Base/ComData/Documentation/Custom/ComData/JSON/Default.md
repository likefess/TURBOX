---
Keywords: JSON
---

# Компоненты для работы с JSON

Работа с данными в формате JSON осуществляется на основе встроенной в платформу возможности превратить JSON-строку в объект Storage, который содержит вложенные элементы List и Storage. Компоненты для работы с JSON предоставляют интерфейс к объекту Storage на основе интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor"). Предполагается, что компоненты JSON используются, когда структура JSON заранее определена и не меняется в процессе работы с данными. При этом определение структуры может быть сколь угодно сложным в рамках спецификации JSON.

Работа с JSON разбивается на три задачи: 

* создание компонентного класса, содержащего описание структуры JSON;
* загрузка и выгрузка JSON-строки в объект компонентного класса;
* чтение или запись данных, используя методы интерфейса [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor").

## Определение структуры JSON при помощи компонентов

### Общие принципы определения структуры

При работе со структурой JSON при помощи компонентов выделяются следующие элементы структуры:

* Простые данные - текст, целые и вещественные числа, булевы значения.
* Объекты - множество пар ключ-значение, где ключ представляет собой текст, а значение может быть как простыми данными, так и другим объектом.
* Списки - упорядоченные последовательности из простых данных или объектов.

В рамках проекта **ComData** реализованы следующие компоненты для работы со структурированными данными в формате JSON:

* [JSON.List](List "Компонент JSON.List") - базовый компонент, представляющий список JSON. Для работы со содержимым списка компонент должен содержать один вложенный компонент [JSON.List](List "Компонент JSON.List"), [JSON.ValueList](ValueList "Компонент JSON.ValueList"), [JSON.Object](Object "Компонент JSON.Object") или [IDataField](..\IDataField "Компонент IDataField").
* [JSON.Object](Object "Компонент JSON.Object") - наследник [JSON.List](List "Компонент JSON.List"), реализующий работу со списком JSON-объектов или единичным JSON-объектом. Может содержать вложенные компоненты [JSON.List](List "Компонент JSON.List"), [JSON.ValueList](ValueList "Компонент JSON.ValueList"), [JSON.Object](Object "Компонент JSON.Object") или [IDataField](..\IDataField "Компонент IDataField"), каждый из которых будет определять одно поле JSON-объекта.
* [JSON.ValueList](ValueList "Компонент JSON.ValueList") - наследник [JSON.List](List "Компонент JSON.List"), реализующий работу со списком или единичным элементом простых данных JSON. Этот компонент может находится только на нижнем уровне структуры компонента и не должен содержать вложенных компонентов класса [JSON.List](List "Компонент JSON.List") или его наследников.

Все JSON компоненты имеет свойство **MaxOccurence**, которое определяет, включается ли текущий элемент в структуру JSON как единичный элемент или как список однотипных элементов. Значение по умолчанию **Unlimited** свойства **MaxOccurence** соответствует представлению в виде списка однотипных элементов. Для добавления в структуру единичного элемента необходимо установить для свойства **MaxOccurence** значение **Once**.

Как и с прочими компонентными классами структура JSON на основе компонентов может задаваться в коде компонентного класса в процедуре **Init** или определяться в ресурсном файле при помощи визуального редактора. Сравнить эти варианты задания структуры на основе компонентных классов проекта **ComData** можно в описании к компоненту [CSVTable](..\CSVTable "Компонент CSVTable")

### Примеры формирования структуры

В рассмотренных ниже примерах будет показано как на основе структуры JSON формируется структура компонентных классов. В данных примерах структура будет определяться в коде компонентного класса в процедуре **Init**.

#### Списки JSON

Рассмотрим формирование структуры компонентного класса на основе структуры JSON, состоящей из двух вложенных списков

    [
      [1,2,"text",{"name":"sample","amount":12345.12}],
      [3,4],
      [5]
    ]

Определение такой структуры осуществляется при помощи следующей иерархии компонентных классов

* [JSON.List](List "Компонент JSON.List")
    * [JSON.List](List "Компонент JSON.List")
        * [IDataField](..\IDataField "Компонент IDataField")

**DoubleList.cod**

    class inherited ComData.JSON.List "Double List";

    inclass

    inobject public

      var InternalList : ComData.JSON.List;
      var InternalList_Value : ComData.IDataField;

    inobject private

      #Override;
      proc Init;
        inherited Init;

        InternalList = AddComp(ComData.JSON.List.Create);
        InternalList_Value = InternalList.AddField('Value',,VarVariant);
    
      end;

    end    

Ключевые моменты, на которые необходимо обратить внимание:

* Содержимое [JSON.List](List "Компонент JSON.List") определяется добавлением вложенного компонента требуемого класса. Компонент верхнего уровня содержит компонент [JSON.List](List "Компонент JSON.List"), что определяет вложенный список. Вложенный компонент [JSON.List](List "Компонент JSON.List") содержит компонент [IDataField](..\IDataField "Компонент IDataField"), который обеспечивает доступ к значению вложенного списка
* Вложенный компонент [IDataField](..\IDataField "Компонент IDataField") не содержит внутреннего имени поля
    
Можно сократить эту структуру за счет использования компонента [JSON.ValueList](ValueList "Компонент JSON.ValueList")

* [JSON.List](List "Компонент JSON.List")
    * [JSON.ValueList](ValueList "Компонент JSON.ValueList")

**DoubleList2.cod**

    class inherited ComData.JSON.List "Double List";

    inclass

    inobject public

      var InternalList : ComData.JSON.ValueList;
      
    inobject private

      #Override;
      proc Init;
        inherited Init;

        InternalList = AddComp(ComData.JSON.ValueList.Create);
        
      end;

    end

  В этом случае доступ к содержимому вложенного списка осуществляется при помощи свойства **Value** компонента [JSON.ValueList](ValueList "Компонент JSON.ValueList").

#### Объекты JSON

Рассмотрим формирование структуры компонентного класса на основе структуры JSON, соответствующий сообщению электронной почты 

    [{
      "receivers" : ["email@example.com","email2@example.com"],
      "sender" : "noreply@example.com",
      "subject" : "Test",
      "textBody" : "Test Email"
    }]

Объект JSON состоит из 4-х полей, одно из которых является списком из текстовых значений, а остальные - одиночные текстовые значения.

* [JSON.Object](Object "Компонент JSON.Object")
    * [JSON.ValueList](ValueList "Компонент JSON.ValueList")
    * [IDataField](..\IDataField "Компонент IDataField")
    * [IDataField](..\IDataField "Компонент IDataField")
    * [IDataField](..\IDataField "Компонент IDataField")


**EmailMessage.cod**

    class inherited ComData.JSON.Object "";

    inobject public

      var Receivers : ComData.JSON.ValueList;
      var Sender    : ComData.IDataField;
      var Subject   : ComData.IDataField;
      var TextBody  : ComData.IDataField;

    inobject private

      #Override;
      proc Init;
        inherited Init;

        MaxOccurence = Once;
        Receivers = AddComp(ComData.JSON.ValueList.CreateEx('receivers'));
        Receivers.ValueType = VarString;
        Subject   = AddField('subject',,varString);
        TextBody  = AddField('textBody',,varString);
        Sender    = AddField('sender',,varString);
      end;

    end

Ключевые моменты, на которые необходимо обратить внимание:

* название поля, содержащего список текстовых значений, задается как имя компонента [JSON.ValueList](ValueList "Компонент JSON.ValueList") при его создании. Тип данных в списке указывается при помощи свойства **ValueType** компонента [JSON.ValueList](ValueList "Компонент JSON.ValueList").
* для текстовых значений имя поля может быть опущено, если оно совпадает с именем, которые мы присваиваем компоненту [IDataField](..\IDataField "Компонент IDataField").

#### Вложенные объекты JSON

Рассмотрим формирование структуры компонентного класса на основе структуры JSON, соответствующей документу со строками

    [
      {
        "Company": "ООО \"Лидер\"",
        "Location": "Склад № 2 (материальный)",
        "Lines": [
          {
            "Resource": "Доска проф. из хвои 600",
            "Quantity": 200,
            "Price": 100
          },
          {
            "Resource": "Гвозди строительные",
            "Quantity": 200,
            "Price": 10
          }
        ]
      }
    ]

Объект JSON верхнего уровня представляет собой заголовок документа и состоит из двух текстовых полей и третьего поля, которое содержит список JSON-объектов соответствующим строкам документа с одним текстовым и двумя числовыми полями

* [JSON.Object](Object "Компонент JSON.Object")
    * [IDataField](..\IDataField "Компонент IDataField")
    * [IDataField](..\IDataField "Компонент IDataField")
    * [JSON.Object](Object "Компонент JSON.Object")
        * [IDataField](..\IDataField "Компонент IDataField")
        * [IDataField](..\IDataField "Компонент IDataField")
        * [IDataField](..\IDataField "Компонент IDataField")

**InventoryOpeningBalanceCons.cod**

    class inherited ComData.JSON.Object "Inventory Opening Balance(Consolidated)";
    
    import ComData;
    
    inobject public

      Company      :IDataField;
      Location     :IDataField;
      Lines        :Comdata.JSON.Object;
      Lines_Resource   :IDataField;
      Lines_Quantity   :IDataField;
      Lines_Price      :IDataField;

    inobject  private

      #Override;
      proc Init;
        inherited Init;
    
        Company     = AddField('Company','',varString);
        Location    = Addfield('Location','',varString);
        Lines       = AddComp(ComData.JSON.Object.CreateEx('Lines'));
        with Lines do
          Lines_Resource  = AddField('Resource',,varString);
          Lines_Quantity  = AddField('Quantity',,varNumeric);
          Lines_Price     = AddField('Price',,varNumeric);
        end;
      end;

    end

При формировании структуры для вложенных JSON объектов, также может быть удобно выделять вложенные объекты в отдельные компонентные классы. Такой способ записи делает структуру объектов более наглядной как при определении, так и при использовании, позволяет инкапсулировать функциональность вложенных объектов и повторно использовать элементы структуры для похожих задач без необходимости повторного определения. В нашем примере структура может быть определена двумя компонентными классами

**InventoryOpeningBalance.cod**

    class inherited ComData.JSON.Object "Inventory Opening Balance";

    import ComData;

    inobject public

      Company      :IDataField;
      Location     :IDataField;
      Lines        :Data.InventoryOpeningBalanceLines;

    inobject  private

      #Override;
      proc Init;
        inherited Init;

        Company     = AddField('Company','',varString);
        Location    = Addfield('Location','',varString);
        Lines       = AddComp(Data.InventoryOpeningBalanceLines.CreateEx('Lines'));
      end;

    end

**InventoryOpeningBalanceLines.cod**

    class inherited ComData.JSON.Object "Inventory Opening Balance Lines";

    import ComData;

    inobject public

      Resource     :IDataField;
      Quantity     :IDataField;
      Price        :IDataField;

    inobject  private

      #Override;
      proc Init;
        inherited Init;

        Resource  = AddField('Resource',,varString);
        Quantity  = AddField('Quantity',,varNumeric);
        Price     = AddField('Price',,varNumeric);
      end;

    end

В рамках функциональности компонентных классов эти два варианта описания структуры одинаковы, но некоторые различия возникают при доступе к полям вложенного объекта. Так в единой структуре используются плоская структура названий свойств компонентного класса, например **Lines_Resource**, а при записи этой же структуры в виде двух классов доступ к этому же полю будет осуществляться в иерархической записи **Lines.Resource**. 

## Загрузка и выгрузка JSON-строки в объект компонентного класса

Загрузка и выгрузка JSON-строки в объект компонентного класса осуществляется при помощи свойства **StringValue** компонента [JSON.List](List "Компонент JSON.List") и его наследников. В случае использования вложенных компонентов обращение к **StringValue** возможно на любом уровне иерархии, при этом загрузка и выгрузка осуществляется только с этого уровня иерархии.

Также если JSON-строка находится в файле, то содержимое файла можно загрузить или выгрузить в объект компонентного класса при помощи функций **LoadFromFile(aFileName : String)** и **SaveToFile(aFileName : String)**. Как и в случае с прямым обращением к **StringValue** эти функции работают на любом уровне иерархии структуры компонентов.

Пример загрузки JSON-строки в объект компонентного класса **DoubleList** определенный выше

    var vJSONList : Data.DoubleList = Data.DoubleList.Create;
    vJSONList.StringValue = '[[1,2,"text",{"name":"sample","amount":12345.12}],[3,4],[5]]';

Пример выгрузки JSON-строки из объекта класса **DoubleList**

    var vJSONList : Data.DoubleList = Data.DoubleList.Create;
    --Выполнение действий по заполнению vJSONList
    var vJSONString : String = vJSONList.StringValue;


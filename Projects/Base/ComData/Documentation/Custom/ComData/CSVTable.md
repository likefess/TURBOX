---
Keywords: CSVTable
---

# Компонент CSVTable

Компонент CSVTable реализует интерфейс [ICursor](ICursor.Default "Интерфейс ICursor") для доступа к данным
в текстовых файлах в формате CSV.

Компонентные классы созданные на основе CSVTable позволяют определить колонки CSV-файла, как свойства класса,
обеспечивая синтаксическую подсказку при написании кода, осуществляющего работу с CSV-файлами.

## Вложенные компоненты

Компонент поддерживает следующие вложенные компоненты:

* [IDataField](IDataField "Компонент IDataField") - определяет колонку CSV-файла.

## Сценарии использования

Для компонента **CSVTable** применимы все сценарии использования, описанные для интерфейса [ICursor](ICursor.Default "Интерфейс ICursor").

### Чтение CSV-файла

Работа с CSV-файлами при помощи компонента **CSVTable** разбивается на три задачи: 

* создание компонентного класса на основе **CSVTable**, содержащего описание структуры файла;
* установка переменных параметров работы с CSV-файлом;
* чтение данных, используя методы интерфейса [ICursor](ICursor.Default "Интерфейс ICursor").

Рассмотрим выполнение этих задач на примере CSV-файла следующего вида

    Предприятие;Склад;Номенклатура;Количество;Цена
    "ООО ""Лидер""";Склад № 2 (материальный);Доска проф. из хвои 600;200;100
    "ООО ""Лидер""";Склад № 2 (материальный);Гвозди строительные;200;10
    "ООО ""Лидер""";Склад № 2 (материальный);Лакокрасочные материалы;300;50
    "ООО ""Лидер""";Склад № 2 (материальный);Балки;40;2000
    "ООО ""Лидер""";Склад № 2 (материальный);Клееный брус сосна;300;3000
    "ООО ""Лидер""";Склад № 2 (материальный);Скобы;500;20

#### Определение структуры курсора в процедуре Init компонентного класса

В рамках этого сценария создается компонентный класс, в котором структура CSV-файла определяется в процедуре **Init**.

Ключевые моменты, на которые необходимо обратить внимание:

* Колонки определяются при помощи компонента [IDataField](IDataField "Компонент IDataField").
  Для каждой колонки создается отдельное публичное свойство класса, что позволяет пользоваться в дальнейшем
  синтаксической подсказкой при работе с компонентным классом.
* Вызов **AddField** в процедуре **Init** выполняет две задачи
    * В компонентный класс **InventoryOpeningBalance** добавляется компонент [IDataField](IDataField "Компонент IDataField"),
    где первый параметр - внутреннее имя компонента, второй - название колонки в CSV-файле, третий - тип данных.
    Обращение к компоненту [IDataField](IDataField "Компонент IDataField") по внутреннему имени осуществляется
    через свойство **Component** родительского компонента.
    * Свойству класса, соответствующему колонке CSV-файла, присваивается созданный объект [IDataField](IDataField "Компонент IDataField").

**InventoryOpeningBalance.cod**

    class inherited ComData.CSVTable "Начальные остатки";
    
    import ComData;
    
    inobject public

      Company      :IDataField;
      Location     :IDataField;
      Resource     :IDataField;
      Quantity     :IDataField;
      Price        :IDataField;

    inobject  private

      #Override;
      proc Init;
        inherited Init;
      
        Company  = AddField('Company','Предприятие',varString);
        Location = Addfield('Location','Склад',varString);
        Resource = Addfield('Resource','Номенклатура',varString);
        Quantity = Addfield('Quantity','Количество',varNumeric);
        Price    = Addfield('Price','Цена',varNumeric);

      end;

    end   

#### Определение структуры курсора в ресурсном файле компонентного класса (альтернативный вариант)

Второй вариант определения структуры CSV-файла: создать ресурсный файл с компонентами при помощи визуального конструктора.

Ключевые моменты, на которые необходимо обратить внимание:

* Как и в предыдущем примере колонки определяются при помощи компонента [IDataField](IDataField "Компонент IDataField"). Для каждой колонки создается отдельное публичное свойство класса, что позволяет пользоваться в дальнейшем синтаксической подсказкой при работе с компонентным классом.
* Перекрытие процедуры **Init** отсутствует, вместо этого компоненты [IDataField](IDataField "Компонент IDataField")определены в ресурсном файле. Связывание свойства компонентного класса, соответствующего колонке, с объектом [IDataField](IDataField "Компонент IDataField"), создаваемым при инициализации по ресурсному файлу осуществляется по имени компонента (поле **Name** визуального конструктора). 

InventoryOpeningBalance.cod

    class inherited ComData.CSVTable "Начальные остатки";
    
    import ComData;

    inclass private

      #Override;
      var UseResource             :Logical := True;  
    
    inobject public

      Company      :IDataField;
      Location     :IDataField;
      Resource     :IDataField;
      Quantity     :IDataField;
      Price        :IDataField;

    end

InventoryOpeningBalance.crf

    <?xml version="1.0" encoding="UTF-8"?>
    <Resource Version="2">
      <Component Class="ComData.CSVTable">
        <Component Name="Company" Class="ComData.IDataField" FieldName="Предприятие" ValueType="VarString"/>
        <Component Name="Location" Class="ComData.IDataField" FieldName="Склад" ValueType="VarString"/>
        <Component Name="Resource" Class="ComData.IDataField" FieldName="Номенклатура" ValueType="VarString"/>
        <Component Name="Quantity" Class="ComData.IDataField" FieldName="Количество" ValueType="VarNumeric"/>
        <Component Name="Price" Class="ComData.IDataField" FieldName="Цена" ValueType="VarNumeric"/>
      </Component>
    </Resource>  
   
#### Чтение данных CSV-файла

В рамках этого сценария осуществляется открытие CSV-файла для чтения. В качестве примера используется структура CSV-файла и компонентный класс **InventoryOpeningBalance** из предыдущих примеров, **aAddress** - текстовая переменная, в которой содержится путь до CSV-файла.

    var vInputCSV  : Data.InventoryOpeningBalance;  
    vInputCSV = Data.InventoryOpeningBalance.Create;
    vInputCSV.FileName =  aAddress;
    
    vInputCSV.select;
    while not vInputCSV.EOF do
       var vCompanyTxt  : String = vInputCSV.Company.Value;
       var vLocationTxt : String = vInputCSV.Location.Value;
       var vResourceTxt : String = vInputCSV.Resource.Value;
       var vQuantityTxt : String = vInputCSV.Quantity.Value;
       var vPriceTxt    : String = vInputCSV.Price.Value;        

       vInputCSV.next;
    end

    
## Типы

Используются типы, определенные в интерфейсе [ICursor](ICursor.Default "Интерфейс ICursor")

## Свойства

Используются все свойства, определенные в интерфейсе [ICursor](ICursor.Default "Интерфейс ICursor"). Также добавлены свойства

* **FileName (String)** - путь до CSV-файла
* **FieldSeparator (String)** - разделитель между полями CSV-файла. По умолчанию ';'
* **FieldQualifier** - символ маскирования полей. Маскирование содержимого полей выполняется, если поле содержит разделитель или символ маскирования. По умолчанию '"'. 
* **HeaderLineNo** - порядковый номер строки файла, в которой находятся заголовки колонок
* **FirstDataLineNo** - порядковый номер строки файла, с которой в файле начинаются строки с данными 
 
## Методы

Используются методы, определенные в интерфейсе [ICursor](ICursor.Default "Интерфейс ICursor").
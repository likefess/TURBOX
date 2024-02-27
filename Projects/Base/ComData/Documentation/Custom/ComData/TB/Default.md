# Компоненты для работы с записями базы Турбо

> Экспериментальная поддержка. В будущих версиях возможна существенная переработка принципов работы с компонентами для работы с записями базы Турбо.

Компоненты [TB.Record](Record "Компонент TB.Record") и [TB.Subtable](Subtable "Компонент TB.Subtable") реализуют интерфейс [IRWCursor](..\IRWCursor.Default "Интерфейс IRWCursor") для записей и подтаблиц базы данных Турбо.

Взаимодействие с данными базы Турбо происходит через интерфейсные классы записи.

## Определение структуры записей при помощи компонентов

### Общие принципы определения структуры

При работе с данными базы Турбо выделяются следующие элементы структуры:

* [TB.Record](Record "Компонент TB.Record") - класс записи. Может содержать поля и подтаблицы.
* [TB.Subtable](Subtable "Компонент TB.Subtable") - подтаблица. Может содержать поля и другие подтаблицы.
* [TB.Field](Field "Компонент TB.Field") - поле записи или подтаблицы.

Как и с прочими компонентными классами структура записи базы Турбо на основе компонентов может задаваться в коде компонентного класса в процедуре **Init** или определяться в ресурсном файле при помощи визуального редактора. Сравнить эти варианты задания структуры на основе компонентных классов проекта **ComData** можно в описании к компоненту [CSVTable](..\CSVTable "Компонент CSVTable")

### Пример формирования структуры

В качестве примера формирования структуры рассмотрим документ для ввода начальных остатков ТМЦ. Документ состоит из заголовка с полями **Date**, **Company**, **Location**, **Status** и подтаблицей с полями **Resource**, **Quantity** и **Price**.

**InventoryOpeningBalance.cod**

    class inherited ComData.TB.Record "Inventory Opening Balance";

    import ComData;

    inobject public

      Date         :TB.Field;
      Company      :TB.Field;
      Location     :TB.Field;
      Status       :TB.Field;
      Lines        :ComData.TB.Subtable;
      Lines_Resource     :TB.Field;
      Lines_Quantity     :TB.Field;
      Lines_Price        :TB.Field;

    inobject  private

      #Override;
      RecordClass : Class Com.Rec.IRecord := SCM.Rec.Документы.Остатки.ОстаткиТМЦ;
      #Override;
      FRecord : SCM.Rec.Документы.Остатки.ОстаткиТМЦ;

      #Override;
      proc Init;
        inherited Init;

        Filter = "ТипПроцесса = " + str(Com.inbase.ТипПроцесса_НачальныеОстаткиТМЦнаСкладе_ТиС);
    
        Date      = AddTBField('Date',FRecord.EventTime,varDate);
        Company   = AddTBField('Company',FRecord.Company,varString,'Name');
        Location  = AddTBfield('Location',FRecord.ОбщПроцессКуда,varString,'Name');
        Status      = AddTBField('Status', FRecord.ОбщСтатус,varString,'Name');
        Lines     = AddComp(ComData.TB.Subtable.CreateEx(FRecord.Позиции_Обычный));
        with Lines do
          var vStruct : SCM.Rec.Документы.Остатки.ОстаткиТМЦ_Позиции = FRecord.Позиции_Обычный.DefStruct;
          Lines_Resource  = AddTBField('Resource',vStruct.РесурсКуда,varString,'Name');
          Lines_Quantity  = AddTBfield('Quantity',vStruct.КоличКуда,varNumeric);
          Lines_Price     = AddTBfield('Price',vStruct.ЦенаДляВвода,varNumeric);
        end;
      end;

    end

Ключевые особенности определения структуры записи:

* При определении структуры записи в свойствах **RecordClass** и **FRecord** отражается соответствующий интерфейсный класс записи. 
* Подтаблица определяется как вложенный компонент записи. При создании компонента подтаблицы в параметрах конструктора передается соответствующий компонент подтаблицы из интерфейсного класса записи.
* Для добавления полей в записи и подтаблицы используется функция **AddTBField**, одним из параметров которой является объект класса Com.Fld.IField, соответствующий полю в компонентном классе записи или структуры подтаблицы.
* Значение свойства **Filter** используется для отбора записей при чтении данных из компонента [TB.Record](Record "Компонент TB.Record").
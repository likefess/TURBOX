
#Класс SearchByValue (Поиск по значению)

Класс предназначен для преобразования значения поля-источника в поле-приемник ссылочного типа. Поддерживается только для объекта-примника внутренней структуры Турбо.

###Параметры

* **FieldSearchName  :String** - имя поля, по которому будет производится поиск в соответствующей таблице Турбо

     Атрибуты:
        Caption = '@ParamName:FieldSearchName=Имя поля поиска';
        Enable = true;
        OnEditSetup = 'FieldSearchName_OnEditSetup';

* **RecClassName :String** - класс записи, определяющий тип поля приемника

     Атрибуты:
        Caption = '@ParamName:FieldClass=Класс записей';
        Enable = false;

* **FieldName  :String** - имя поля-приемника

     Атрибуты:
        Caption = '@ParamName:FieldName=Имя поля';
        Enable = false;


###Методы

 * **FillParametrsOnOpen(fieldPos: Rec.ProcessorMapping_FieldPosition; tablePos : Rec.ProcessorMapping_TablePosition): Service.FieldsConvert.ConvertParametrs[]** -
 FieldSearchName - восстанавливается из пользовательских настроек. RecClassName - всегда берется из метаданных.


 * **FieldSearchName_OnEditSetup** - настраивает свойства Edit, связанного с параметром FieldSearchName

 * **ConvertFields(aPos: Rec.ProcessorMapping_FieldPosition) :TOnConvert** - возвращает функцию преобразования данных источника в ссылочный тип Турбо.

#Класс Constant (Константа)

Класс преобразования полей, который заполнит поле приемника выбранным значением. Указание поля источника не требуется.

###Параметры

* **FieldType  :Integer** -

    Атрибуты:
        Caption = '@ParamName:ValueType=Тип поля';
        Enable = false;
        OnEditSetup ='ValueTypeEditSetup';



*  **ParamValue  :Variant** -

    Атрибуты:
        Caption = '@ParamName:Value=Значение';
        Enable = true;
        OnEditSetup ='ParamValueEditSetup';


###Методы

* **FillParametrsOnOpen(afieldPos: Rec.ProcessorMapping_FieldPosition; atablePos : Rec.ProcessorMapping_TablePosition): Service.FieldsConvert.ConvertParametrs[]** -
заполняет параметры правила при открытии. Восстанавливаются из настроек пользователя.

* **ValueTypeEditSetup** - настройки компонента IEdit, связанного с параметром FieldType.

* **ParamValueEditSetup** - настройки компонента IEdit, связанного с параметром ParamValue.

* **ConvertFields(aPos: Rec.ProcessorMapping_FieldPosition) :TOnConvert** - возвращает значение константы, которое указал пользователь при настройке.
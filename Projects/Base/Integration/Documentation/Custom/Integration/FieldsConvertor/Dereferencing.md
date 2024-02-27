
#Класс Dereferencing (Разыменование)

Класс преобразования полей, который из объектного типа внутренней структуры Турбо передает значение указанного пользователем поля.

###Параметры

* **FieldSearchName :String**  - имя поля, значение которого необходимо получить.

     Атрибуты:
         Caption = '@ParamName:FieldName=Имя поля';
         Enable = true;
         OnEditSetup = 'FieldSearchName_OnEditSetup';

* **FieldType :Integer** - тип поля, значение которого необходимо получить.
При автоматическом создании объекта-приемника определяет тип поля приемника.
Вычисляется автоматически и соответствует типу указанного пользователем поля.
Не доступен для редактирования, не отображается на форме настройки преобразования.

     Атрибуты:
         Caption = '@ParamName:FieldType=Тип поля';
         Enable = false;
         Visible = -1;

* **RecClassName :String** - класс записи, определяющий тип поля источника, из которого берется значение FieldSearchName.
Вычисляется автоматически, для редактирования не доступен.

     Атрибуты:
         Caption = '@ParamName:RecClassName=Имя Rec-класса';
         Enable = false;

###Методы

* **FillParametrsOnOpen(afieldPos: Rec.ProcessorMapping_FieldPosition; atablePos : Rec.ProcessorMapping_TablePosition): Service.FieldsConvert.ConvertParametrs[]** - заполняет параметры правила при открытии.
FieldSearchName - восстанавливается из пользовательских настроек.
RecClassName - всегда берется из метаданных.
FieldType - восстанавливается из пользовательских настроек.

* **FieldSearchName_OnEditSetup** - настраивает свойства Edit, связанного с параметром FieldSearchName

* **ConvertFields(aPos: Rec.ProcessorMapping_FieldPosition) :TOnConvert** - возвращает функцию, реализующую получение значения FieldSearchName из значения источника.
Поддержано разыменование для:
* Com.Fld.IPeriodicField
* Com.Fld.IField (включачя доп. поля (ExtraField))
* Com.Fld.IValue
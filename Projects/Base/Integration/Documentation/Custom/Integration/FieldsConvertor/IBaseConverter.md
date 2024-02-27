---
Keywords: IBaseConvert
Link: .Service.FieldsConvert.IBaseConvert
---

***    ---------------------------Версия 2.00------------------------***


#Класс IBaseConvert

Базовый класс преобразования полей. Настраивается в Rec.ProcessorMapping, используется в [IMappingProcessor] (..\IProcessor\IMappingProcessor.md "Процессор IMappingProcessor").


## Методы

* **func GetConvertClasses(var aClassesArray: Variant[2]):String[]** - возвращает имена всех наследников класса IBaseConvert по всем проектам, подключенным к текущей информационной базе.

* **func ConvertFields(aPos: Rec.ProcessorMapping_FieldPosition) :TOnConvert** -
возвращает функцию преобразования полей, определяется в наследниках.

* **func ResultType(aSourceField : Rec.FieldObjectStruct) :VarTypes** -
возвращает тип результата преобразования, определяется в наследниках.


* **proc FillParametrsOnOpen(fieldPos: Rec.ProcessorMapping_FieldPosition; tablePos : Rec.ProcessorMapping_TablePosition)** -
инициализирует параметры преобразования полей. Определяется в наследниках.

* **func GetParamsAsJSON: String** -
возвращает параметры преобразования полей, сериализованные в виде JSON.


##Свойства

* **ParamArray   :Service.FieldsConvert.ConvertParameter[]** -
массив параметров преобразования полей в виде объекта класса [ConvertParameter](topic:.Custom.Integration.FieldsConvertor.ConvertParameter)

##Атрибуты свойств
* Caption  - заголовок параметра
* Enable   - доступность параметра для редактирования
* Visible  - видимость параметра
* OnEditSetup - имя процедуры, выполняющей настройку IEdit, связанного с параметром


------------

В проекте доступны следующие классы преобразования полей :

* [Dereferencing](topic:.Custom.Integration.FieldsConvertor.Dereferencing) - Разыменование
* [ExactMatch](topic:.Custom.Integration.FieldsConvertor.ExactMatch) - Точное соответствие
* [SearchByValue](topic:.Custom.Integration.FieldsConvertor.SearchByValue) - Поиск по значению
* [Constant](topic:.Custom.Integration.FieldsConvertor.Constant) - Константа

Список классов преобразования полей может быть расширен на уровне прикладных проектов.
Для этого требуется создать класс-наследник от IBaseConvert.
Атрибут класса *** Visible=True; *** определяет видимость класса преобразования в форме настройке мэпинга для пользователя.
В разделе ***inobject public*** должны быть определены ***var stored*** параметры, значения которых необходимо задать пользователю.
Свойства параметров задаются атрибутами. Поддерживаются атрибуты:

Метод ***FillParametrsOnOpen*** переопределяется при необходимости автоматического заполнения параметров, если недостаточного данных в определенных атрибутах.
Метод ***ConvertFields*** должен быть обязательно переопределен.

#Правила конвертации полей

 Классы правил конвертации полей используются при настройке преобразования данных из поля-источника в поле-приемник. Могут быть расширены в прикладных проектах.

* [IBaseConvert](topic:.Custom.Integration.FieldsConvertor.IBaseConverter)    - Базовый класс
* [ExactMatch](topic:.Custom.Integration.FieldsConvertor.ExactMatch)          - Точное соответствие
* [Dereferencing](topic:.Custom.Integration.FieldsConvertor.Dereferencing)    - Разыменование
* [SearchByValue](topic:.Custom.Integration.FieldsConvertor.SearchByValue)    - Поиск по значению
* [Constant](topic:.Custom.Integration.FieldsConvertor.Constant)              - Константа


Для добавления собственного правила в прикладном проекте необходимо создать класс-наследник **Integration.Service.FieldsConvert.IBaseConvert**.
Например:
        #Attr Visible=True;
        class inherited Integration.Service.FieldsConvert.IBaseConvert "@ClassName:Example=Пример";
"#Attr Visible=True;" - используется, чтобы правило преобразования было доступно в режиме сессии в форме настройки мэпинга для выбора.
Если правило должно быть определено, но не видно пользователю, атрибут устанавливается в значение False либо не указывается.

Для отображения параметров преобразования на форме настроки необходимо в созданном классе в
области **inobject public** определяются **var stored** параметры. Например:
          #Attr Caption = '@ParamName:Value=Значение';
          #Attr Enable = true;
          #Attr OnEditSetup ='ParamValueEditSetup';
          ParamValue  :Variant;
Атрибуты для параметров описаны в классе [IBaseConvert](topic:.Custom.Integration.FieldsConvertor.IBaseConverter).

Функция **FillParametrsOnOpen** переопределяется при необходимости заполнения параметров правила при открытии формы настройки.

Метод **ConvertFields** должен быть обязательно переопределен.
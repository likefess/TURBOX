---
Keywords: IDataField
---

# Компонент IDataField

Компонент **IDataField** является наследником **Com.Fld.IValue** и обеспечивает доступ к полям структурированных данных. 

Для доступа к значению поля используется свойство **Value**. Значение будет автоматически приводится к типу указанному **ValueType**.

## Конструкторы

* **CreateEx( aName :String = ''; aFieldName :String; aValueType :VarTypes = VarUnknown ) :IDataField** - создает объект класса **IDataField**, где **aName** - внутреннее имя компонента, **aFieldName** - имя поля в структуре данных, **aValueType** -  типа данных.

## Свойства

* **ValueType (VarTypes)** - тип поля.
* **FieldName (String)** - имя поля в структуре данных.
* **Value (Variant)** - значение поля.
 
## Наследники

* [XML.Attribute](XML.Attribute "Компонент XML.Attribute")
* [TB.Field](TB.Field "Компонент TB.Field")
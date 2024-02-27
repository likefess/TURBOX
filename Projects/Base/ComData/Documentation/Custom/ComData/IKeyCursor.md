---
Keywords: IKeyCursor,Open
---

# Интерфейс IKeyCursor
Интерфейс **IKeyCursor** является наследником интерфейса [IRWCursor](IRWCursor.Default "Интерфейс IRWCursor") и добавляет возможность работы с ключевыми полями.

## Сценарии использования
Для интерфейса **IKeyCursor** применимы все сценарии использования, описанные для интерфейса [IRWCursor](IRWCursor.Default "Интерфейс IRWCursor").

### Открытие строки данных с указанными ключевыми полями
В рамках этого сценария осуществляется открытие строки данных в источнике. В приведенном ниже примере предполагается, что **aKeyCursor** - экземпляр класса реализующего интерфейс **IKeyCursor**, в котором определено ключевое поле (колонка) **Code**.

    var aField: Variant;
    var aStorage: Storage = Storage.Create;
    aKeyCursor.KeyFields = ['Code'];
    aStorage['Code'] = 'Значение1';
    aKeyCursor.Open(aStorage);
    if aKeyCursor.State = Normal then
      aField = aRWCursor.Component['Name'].Value;
    else
      --запись с ключевым полем Code = 'Значение1' в источнике не существует
    end;


## Типы
Используются типы, определенные в интерфейсе [IRWCursor](IRWCursor.Default "Интерфейс IRWCursor")
## Свойства
Используются свойства, определенные в интерфейсе [IRWCursor](IRWCursor.Default "Интерфейс IRWCursor")
Добавлено свойство:
 **KeyFields (String[])** - задаёт список ключевых полей (колонок) источника.

## Методы
Используются все методы, определенные в интерфейсе [IRWCursor](IRWCursor.Default "Интерфейс IRWCursor").


Добавлен метод:

* **Open(aKeyStorage: Storage)** - открывает строку данных с ключевыми полями, указанными в aKeyStorage.

## Реализация интерфейса

* [TB.Record](TB.Record "Компонент TB.Record")
* [SQL.Table](SQLTable "Компонент SQL.Table")
---
Keywords: IRWCursor
Link: .IRWCursor
---

# Интерфейс IRWCursor

Используется для доступа к структурированным данным, для которых возможно одновременное чтение и запись.

Является наследником интерфейса [ICursor](..\ICursor.Default "Интерфейс ICursor").

## Сценарии использования
Для интерфейса **IRWCursor** применимы все сценарии использования, описанные для интерфейса [ICursor](..\ICursor.Default#сценарии-использования "Интерфейс ICursor").

### Чтение данных с одновременным дополнением
В рамках этого сценария осуществляется последовательный перебор строк данных в источнике с удалением части строк в зависимости от значений в колонках. В приведенном ниже примере предполагается, что **aRWCursor** - экземпляр класса реализующего интерфейс **IRWCursor**, в котором определена колонка **Code**.

    aRWCursor.select;
    if aRWCursor.EOF then
      aRWCursor.Add;
      aRWCursor.Component['Code'].Value = 'default';
      aRWCursor.Post;
    else
      while not aRWCursor.EOF do begin
        aRWCursor.Component['Code'].Value = aRWCursor.Component['Code'].Value + 'mod';
        aRWCursor.Post;
        aRWCursor.Next;
      end;
    end;

### Чтение данных с удалением части строк
В рамках этого сценария осуществляется последовательный перебор строк данных в источнике с корректировкой значений в колонках и добавлением новых строк. В приведенном ниже примере предполагается, что **aRWCursor** - экземпляр класса реализующего интерфейс **IRWCursor**, в котором определена колонка **Code**.

    aRWCursor.select;
    while not aRWCursor.EOF do begin
      if aRWCursor.Component['Code'].Value = 'Bad Code' then
        aRWCursor.Delete;
      end;
      aRWCursor.next;
    end;

## Реализация интерфейса

* [JSON.List](..\JSON.List "Компонент JSON.List")
* [JSON.ValueList](..\JSON.ValueList "Компонент JSON.ValueList")
* [JSON.Object](..\JSON.Object "Компонент JSON.Object")
* [XML.Data](..\XML.Data "Компонент XML.Data")
* [XML.Field](..\XML.Field "Компонент XML.Field")
* [TB.Record](..\TB.Record "Компонент TB.Record")
* [TB.Subtable](..\TB.Subtable "Компонент TB.Subtable")


## Типы

* [CursorStates](..\ICursor.CursorStates)

## Свойства

* [EOF](..\ICursor.EOF)
* [Active](..\ICursor.Active)
* [State](..\ICursor.State)

## Методы

### Инициализация компонента

* [AddField](..\ICursor.AddField)

### Работа с данными

* [Select](..\ICursor.Select)
* [Next](..\ICursor.Next)
* [Add](..\ICursor.Add)
* [Post](Post)
* [Close](..\ICursor.Close)
* [Delete](Delete)



---
Keywords: AddField
Link: .ICursor.@AddField
---

[Классы ComData](topic:.Custom.ComData.Default) : [ICursor](Default)

# Метод AddField

> func AddField(aName :String; aFieldName :String = ''; aType : [VarTypes](topic:kernel.Программирование.Классы.System.Прочие.ТипыДанныхVarTypes)) :[IDataField](..\IDataField)

При инициализации экземпляра курсора добавляет в курсор поле.

Возвращает ссылку на экземпляр добавленного поля.

## Аргументы{#Args}

### aName : String

Уникальное имя поля в курсоре

### aFieldName : String

Уникальный идентификатор поля в источнике данных (если опущено будет использоваться <b>aName</b>)

### aType : VarTypes

Тип колонки


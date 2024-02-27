---
Keywords: DataSourceView,DataSourceViewer
---

# Компонент DataSourceView

------------

##Возможности
Компонент CSVTable использует интерфейс [ICursor](..\ICursor.Default "Интерфейс ICursor") для просмотра данных из компонентов:
* [Таблица CSV](..\CSVTable "Компонент CSV Table")
* [Клиент-банк](..\ClientBankTable "Компонент ClientBank Table")
* [Таблица SQL](..\SQLTable "Компонент SQL Table")
* [TB.Record](..\TB.Record "Компонент TB.Record")

Данные выводятся постранично, предыдущие страницы сохраняются в памяти.
Количество выводимых записей на странице можно менять в форме вручную.

В дальнейшем планируется ввести возможность редактирования данных.


##Использование


**func CreateEx(aCursor: ICursor; aMaxRecOnPage: Integer = MaxRecordPerPage): DataSourceViewer.DataSourceView** -
создаёт объект класса DataSourceView, где **aCursor** - интерфейс [ICursor](..\ICursor.Default "Интерфейс ICursor"), aMaxRecOnPage - количество записей, выводимых на страницу
(необязательный параметр, по умолчанию определяется внутренней константой **MaxRecordPerPage** = 20).



###Пример
    var DataSet: ComData.DataSourceViewer.DataSourceView = ComData.DataSourceViewer.DataSourceView.CreateEx(EPObj);
    DataSet.Show;

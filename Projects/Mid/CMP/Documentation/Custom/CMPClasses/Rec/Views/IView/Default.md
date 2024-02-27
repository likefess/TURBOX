---
Link: CMP.Rec.Views.IView
---

<!--- Навигация
[CMP.Rec.Views](#)
-->

#Базовое представление 
---
Абстрактный базовый класс обертка, от которого наследуются классы представлений.
В классе заданы поля и методы для работы с периодами и фреймами формы представления.


<!---
## Примеры
-->

## Свойства

<!--
### Типы
* [Тип 1](#)
-->

### Поля
* [Поле CodeView](topic:.Custom.CMPClasses.Rec.Views.IView.CodeView)
* [Поле ObjectClass](topic:.Custom.CMPClasses.Rec.Views.IView.ObjectClass)
* [Поле ObjectClassStr](topic:.Custom.CMPClasses.Rec.Views.IView.ObjectClassStr)
* [Поле CurrentObject](topic:.Custom.CMPClasses.Rec.Views.IView.CurrentObject)
* [Поле BegDate](topic:.Custom.CMPClasses.Rec.Views.IView.BegDate)
* [Поле EndDate](topic:.Custom.CMPClasses.Rec.Views.IView.EndDate)
* [Поле Period](topic:.Custom.CMPClasses.Rec.Views.IView.Period)
* [Поле OwnPeriod](topic:.Custom.CMPClasses.Rec.Views.IView.OwnPeriod)
* [Поле HidePeriod](topic:.Custom.CMPClasses.Rec.Views.IView.HidePeriod)
* [Поле ViewForm](topic:.Custom.CMPClasses.Rec.Views.IView.ViewForm)
* [Поле ViewFrame](topic:.Custom.CMPClasses.Rec.Views.IView.ViewFrame)
* [Поле ServiceSettings](topic:.Custom.CMPClasses.Rec.Views.IView.ServiceSettings)
* [Поле SlaveMode](topic:.Custom.CMPClasses.Rec.Views.IView.SlaveMode)



### Методы
* [Процедура ShowInFrame](topic:.Custom.CMPClasses.Rec.Views.IView.ShowInFrame)
* [Процедура LoadViewForm](topic:.Custom.CMPClasses.Rec.Views.IView.LoadViewForm)
* [Процедура CreateSubframe](topic:.Custom.CMPClasses.Rec.Views.IView.CreateSubframe)
* [Процедура SetupServices](topic:.Custom.CMPClasses.Rec.Views.IView.SetupServices)
* [Процедура CreateViewForm](topic:.Custom.CMPClasses.Rec.Views.IView.CreateViewForm)
* [Процедура SetupView](topic:.Custom.CMPClasses.Rec.Views.IView.SetupView)



## Классы, производные от IView:

* [IObjectsList](topic:.Custom.CMPClasses.Rec.Views.IObjectsList.Default) - класс обертка записи представления типа СписокОбъектов;
* [IDocument](topic:.Custom.CMPClasses.Rec.Views.IDocument.Default) - класс обертка записи представления типа Документ;
* [IReport](topic:.Custom.CMPClasses.Rec.Views.IReport.Default) - класс обертка записи представления типа Отчет;
* [IViewsContainer](topic:.Custom.CMPClasses.Rec.Views.IViewsContainer.Default) - класс обертка записи представления типа Контейнер представлений.
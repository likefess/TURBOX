---
Keywords: ReportService, Сервис отчётов
---

<!---#ReportService--->
#Сервис отчётов

##Описание

Сервис служит для получения данных по отчетам (как проектных, так и из базы). Поддерживается только режим чтения.


##Вызовы

- GET "/"  - список проектных отчетов. Наследники Com.Frm.IReportForm;

- GET "/{ReportName}"  - получение проектного отчета;

- GET "/{ReportName}/data" - получение данных проектного отчета в формате JSON (CalcAPI.Data.ReportData);

- GET "/CustomReports/"  - список отчетов из базы. Наследники Com.Service.Report;

- GET "/CustomReports/{ReportCode}"  - получение отчета из базы;

- GET "/CustomReports/{ReportCode}/data" - получение данных отчета из базы в формате JSON (CalcAPI.Data.ReportData);

- GET "/{ReportName}/XML" - получение проектного отчёта в формате XML;

- GET "/CustomReports/{ReportCode}/XML" - получение отчёта из базы в формате XML;

- GET "/{ReportName}/Parameters" - получение параметров проектного отчета;

- GET "/CustomReports/{ReportCode}/Parameters" - получение параметров отчета из базы.


##Адрес

**Базовый url**: /xcom/api/reports

**Полный адрес** включает в себя имя сервера *ServerName*, порт *Port*, необязательный параметр - селектор информационной базы *InfobaseSelector* и базовый URL *BaseUrl*

http://ServerName:Port/{InfobaseSelector}/BaseUrl

Пример (получение списка отчётов): http://175.213.98.1:81/my_ERP_Database/api/xcom/reports/

Пример (получение данных отчёта "ОтчётПоОстаткам" в проекте "SCM" с заданием параметров "RC_ПоказКолич" и "RC_ТМЦ"): http://175.213.98.1:81/my_ERP_Database/api/xcom/reports/SCM.Rep.ОтчётПоОстаткам/Data?Parameters={"RC_ПоказКолич":"True", "RC_ТМЦ": "{Biz.Data.Resource:20}"}


##Спецификация OpenAPI

Для получения спецификации OpenAPI, необходимо отправить запрос

OPTIONS http://ServerName:Port/{InfobaseSelector}/api/xcom/reports

или

GET http://ServerName:Port/{InfobaseSelector}/api/xcom/reports/*
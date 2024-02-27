---
Keywords: ChangeLog ComExt, Новенькое, ComExt
---

#Новенькое проекта ComExt


## 13.01.2023

###Доработки веб-сервиса "api/xcom/reports" (CalcAPI.ReportService):
<!--  TXAPP-6941 -->
- Добавлен вызов GET /{ReportName}/Parameters - получение параметров проектного отчета.
- Добавлен вызов GET /CustomReports/{ReportName}/Parameters - получение параметров отчета из базы.
- Добавлен вызов GET /{ReportName}/data - получение данных проектного отчета в формате JSON (CalcAPI.Data.ReportData).
- Добавлен вызов GET /CustomReports/{ReportName}/data - получение данных отчета из базы в формате JSON (CalcAPI.Data.ReportData).
- Исправлены URL для вызовов getReportDataXML и getCustomReportDataXML. Приведено к Формату {ReportName}/XML.

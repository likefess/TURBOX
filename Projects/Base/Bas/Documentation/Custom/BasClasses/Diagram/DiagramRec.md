---
Link: .Rec.Service.Diagram
---

# Класс Rec.Service.Diagram
---

Служит для хранения диаграммы в базе данных.
Настройки хранятся в текстовых полях, это позволяет легко расширять их в надпроектах.
Использует запись `Service.Diagram`.

Наследник класса `Com.Rec.CodeName`.

### Перечень ключевых inobject-полей:

##### Содержимое диаграммы
```
stored var Content       :String
```
Json-строка во внутреннем формате компонента [IDiagramJS](topic:Com.Custom.ComClasses.Ctrl.IDiagramJS.Default).

#####Набор настроек диаграммы
```
stored var Config        :String
```
Json-строка.

##### Связь элементов диаграммы с элементами данных
```
stored var Datalink      :String
```
Json-строка.

##### Режим построения диаграммы
```
stored var Mode          :String
var Drawer               :DiaGen.ManualLayout
```
Связанная пара полей.
Если [режим](topic:.Custom.BasClasses.Diagram.ManualLayout) не указан (`Mode = ''`),
то `Drawer` использует базовый режим [`DiaGen.ManualLayout`](topic:.Custom.BasClasses.Diagram.ManualLayout).

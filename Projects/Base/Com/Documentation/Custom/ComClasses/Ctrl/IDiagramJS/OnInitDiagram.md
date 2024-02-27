---
Link: .Ctrl.IDiagramJS.@OnInitDiagram
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Событие OnInitDiagram

## Описание

     OnInitDiagram :TOnInitDiagram;

## Назначение

Обработчик события, позволяющий получить оповещение, что компонент диаграмма инициализирован и готов к работе.
В данном обработчике, как правило, производится загрузка схемы из JSON-строки (файла) и другие действия.


Тип функции-обработчика - [TOnInitDiagram](topic:.Custom.ComClasses.Константы и перечислимые типы проекта Com.TOnInitDiagram).

---

<b>Пример кода</b>

     proc TestJDiagramOnInitDiagram(aDiagram :Com.Ctrl.IDiagramJS);
     var demoJson :String = Sys.Files.ReadFileAsStr('%Projects%\' + ClassProject + '\Attachment\json\demo-jdiagram.json');
       aDiagram.Load(demoJson);
       aDiagram.SetAutoSize;
     end;



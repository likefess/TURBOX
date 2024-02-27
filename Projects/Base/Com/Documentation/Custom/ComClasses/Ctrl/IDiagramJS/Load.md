---
Link: .Ctrl.IDiagramJS.@Load
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Процедура Load

## Описание

     proc Load(aDataJson :String);

## Параметры

**aDataJson** - данные для отрисовки диаграммы в виде JSON строки;

## Назначение

Загружает и отображает диаграмму, представленную в виде JSON строки.
При вызове данной процедуры также формируются внутренние компоненты диаграммы [Diagram.Shape](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Shape.Default) и [Diagram.Connection](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Connection.Default)

---

<b>Пример кода</b>

     proc TestJDiagramOnInitDiagram(aDiagram :Com.Ctrl.IDiagramJS);
     var demoJson :String = Sys.Files.ReadFileAsStr('%Projects%\' + ClassProject + '\Attachment\json\demo-jdiagram.json');
       aDiagram.Load(demoJson);
       aDiagram.SetAutoSize;
     end;
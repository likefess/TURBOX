---
Link: .Ctrl.IDiagramJS.@SetAutoSize
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Процедура SetAutoSize

## Описание

    proc SetAutoSize;

## Назначение

Процедура предназначена для автоматического определения и установки масштаба диаграммы, чтобы вся диаграмма уместилась в видимую область компонента.

---

<b>Пример кода</b>

    proc TestJDiagramOnInitDiagram(aDiagram :Com.Ctrl.IDiagramJS);
    var demoJson :String = Sys.Files.ReadFileAsStr('%Projects%\' + ClassProject + '\Attachment\json\demo-jdiagram.json');
      aDiagram.Load(demoJson);
      aDiagram.SetAutoSize;
    end;
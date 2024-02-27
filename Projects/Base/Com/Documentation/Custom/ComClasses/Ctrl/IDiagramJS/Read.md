---
Link: .Ctrl.IDiagramJS.@Read
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Процедура Read

## Описание

     proc Read(aAsDataJson : proc (aDataJson:String));

## Параметры

**aAsDataJson** - процедура обратного вызова, передающая данные, полученные со стороны JS в виде JSON строки;

## Назначение

Позволяет получить схему в виде JSON строки со стороны JavaScript, работающего внутри компонента.

---

<b>Пример кода</b>

     proc Button1OnClick(aSender :Com.Ctrl.IControl; aIndex :Integer)
       JDiagram1.Read(proc(aJson :String)
         Com.Frm.Dlgs.Message(aJson);     
       end);
     end;
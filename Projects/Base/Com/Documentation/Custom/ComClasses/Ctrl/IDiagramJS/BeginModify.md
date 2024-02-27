---
Link: .Ctrl.IDiagramJS.@BeginModify
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IJSControl](topic:Com.Custom.ComClasses.Ctrl.IJSControl.Default) :
[Ctrl.IDiagramJS](Default)

# Процедура BeginModify

## Описание

    proc BeginModify;

## Назначение

Процедура предназначена для отключения отрисовки и генерации событий диаграммы при добавлении компонентов диаграммы.
По завершении добавления компонентов с целью отрисовки добавленных компонентов на диаграмму необходимо вызвать метод [EndModify](topic:.Custom.ComClasses.Ctrl.IDiagramJS.EndModify).

---

<b>Пример кода</b>

    func CreateShape(aX, aY:Numeric; aText:String; aTextColor, aFillColor:Integer) :Com.Ctrl.Diagram.Shape;
      Result = Com.Ctrl.Diagram.Shape.Create;
      Result.InnerLabel.Text = aText;
      Result.InnerLabel.Fill = aTextColor;
      Result.Fill = aFillColor;
      Result.Stroke = aFillColor;
      Result.Width = 100;
      Result.Height = 40;
      Result.X = aX;
      Result.Y = aY;
    end;

    proc BuildDiagram;
      JDiagram1.BeginModify;
        JDiagram1.AddComp(CreateShape(110,139, "DONE", clWhite, clGreen));
        JDiagram1.AddComp(CreateShape(350,139, "ВСЕ", clWhite, clLtGray));
        JDiagram1.AddComp(CreateShape(590,139, "RESOLVED", clBlack, clOrange));
      JDiagram1.EndModify;
    end;
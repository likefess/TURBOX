---
Title: Компонент Shape
Link: .Ctrl.Diagram.Shape
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[Ctrl.Diagram.Base](topic:Com.Custom.ComClasses.Ctrl.Diagram.Base.Default) :
[Ctrl.Diagram.BaseStyled](topic:Com.Custom.ComClasses.Ctrl.Diagram.BaseStyled.Default) :
[Ctrl.Diagram.BasePoint](topic:Com.Custom.ComClasses.Ctrl.Diagram.BasePoint.Default) :
[Ctrl.Diagram.Item](topic:Com.Custom.ComClasses.Ctrl.Diagram.Item.Default)

# Ctrl.Diagram.Shape

Класс *Ctrl.Diagram.Shape* предназначен для описания фигуры на диаграмме.

Наследует все свойства и методы родительского класса Ctrl.Diagram.Item.

Непосредственно в классе *Ctrl.Diagram.Shape* определены следующие свойства класса:
* [Перечислимый тип TShapeTypes](TShapeTypes)
* [Константа tsDefault](tsDefault)
* [Константа tsCircle](tsCircle)
* [Константа tsDiamond](tsDiamond)
* [Константа tsFrame](tsFrame)
* [Функция ShapeTypeFromString](ShapeTypeFromString)
* [Функция ShapeTypeToString](ShapeTypeToString)

и свойства объекта:
* [Поле ShapeType](ShapeType)
* [Поле DeleteShape](DeleteShape)
* [Поле HintShape](HintShape)
* [Поле ConnectShape](ConnectShape)
* [Поле CopyShape](CopyShape)
* [Поле CodeShape](CodeShape)
* [Поле ImageShape](ImageShape)
* [Поле CommandsShape](CommandsShape)
* [Поле Width](Width)
* [Поле Height](Height)
* [Процедура SeekConnections](SeekConnections)
* [Процедура ClearCustomCommands](ClearCustomCommands)
* [Процедура AddCustomAction](AddCustomAction)
---
Link: .DiaGen.ManualLayout
---

# Класс DiaGen.ManualLayout
---

Режим построения диаграммы "Ручная компоновка".
Позволяет пользователю создавать диаграмму в ручном режиме
и привязывать к клику на [элементы диаграммы](topic:.Custom.BasClasses.Diagram.DiagramRec)
одно из [зарегистрированных действий](topic:.Custom.BasClasses.Diagram.DiagramRec).

Так же является базовым для прочих режимов построения.

Наследник класса `Com.Frm.IBlankForm`.

Crf-форма режима внедряется в [редактор диаграммы](topic:.Custom.BasClasses.Diagram.DiagramTuner).
Публичные `stored`-поля объекта сохраняются в поле `Config` класса [Rec.Service.Diagram](topic:.Custom.BasClasses.Diagram.DiagramRec).
Это позволяет дополнять набор хранимых настроек в наследниках без реорганизации.



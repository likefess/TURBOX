---
Link: Com.Ctrl.IGrid.@OnDrawCell
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IGrid](Default)

# Событие OnDrawCell

## Описание

    OnDrawCell :TGridOnDrawCell;

## Назначение

Обработчик события, которое вызывается каждый раз при отрисовки ячейки.
Используется для динамического изменения цветов фона и текста, а также параметров шрифта ячейки.

Событие работает с viewer-ом ячейки - объектом, создаваемым в момент отрисовки
и уничтожаемым в последствии. Соответственно, изменения свойств, выполненные обработчиком,
действуют только в рамках текущей отрисовки и не сохраняются между ними.
Для установки постоянных значений свойств используйте обработчик [OnShowCell](OnShowCell).

Тип обработчика -- [TGridOnDrawCell](TGridOnDrawCell).
---
Title: Особенности компонентов WEB
Keywords: Компоненты, Особенности, Различия, WEB
---

#Особенности компонентов WEB
---

<b><font size="3">[IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)</font></b>
<br/>
<br/>
<b>Режим редактирования</b>
<br/>
В WEB поле ввода спроектировано и разработано таким образом, что его функционал реализован в двух режимах:
1. При установке фокуса поле ввода сразу переходит в режим редактирования в отличие от нативной версии, где сначала поле ввода получает фокус без перехода в режим редактирования.
2. Если полю ввода назначен обработчик события [OnEnter](topic:.Custom.ComClasses.Ctrl.IEdit.OnEnter), то в WEB поведение поля ввода становится идентичным поведению в нативной версии клиента.
3. Перенос осуществляется по словам, а не по буквам.
4. Цвет поля ввода по умолчанию прозрачный, поэтому он того же цвета, что и компонент, в котором он находится.

Пример раскрашивания полей в нативном и WEB клиентах для заданных цветов <b>FieldColor</b>, <b>Color</b> и  <b>FontColor</b> представлен ниже:

![](topic:.Custom.AddFiles.FeatureWEB.IEditColors.png)

<br/>
<b>Перечислимый тип клетки</b>
[IEdit.CellFormat](topic:.Custom.ComClasses.Ctrl.IEdit.CellFormat) = [Com.Consts.EnumFormat](topic:kernel.Программирование.Классы.Объекты.Шаблоны.Шаблон.КонстантыФорматыКлетки)
<br/>
Для данного типа клетки в WEB поле позволяет выбрать значение только из выпадающего списка, ручной ввод с фильтрацией списка по введенному значению не предусмотрен.
<br/>

<div>
<i>Пример кода:</i>
<div  style="background:whitesmoke">
<code>
 &nbsp;&nbsp;floorsUp&nbsp;&nbsp;&nbsp;:Com.Fld.IVar;
 <br/>
 &nbsp;&nbsp;edFloorsUp&nbsp;:Com.Ctrl.IEdit;
 <br/>
 &nbsp;&nbsp;...
 <br/>
 &nbsp;&nbsp;floorsUp = Com.Fld.IVar.CreateEx(, VarInteger);
 <br/>
 &nbsp;&nbsp;with MainTab do
 <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp     = AddFieldEdit('', floorsUp, 30, '', nil, false, nil);
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp.Hint = '@Укажите количество';
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp.Wrap = False;
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp.ShortList = True;
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp.Alignment  = CenterAlign;
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;<font color="blue"><b><i>edFloorsUp.CellFormat = EnumFormat;</i></b></font>
     <br/>
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;var l:String[];
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;for var i = 1..10 do l[i] = str(i) + '|' + str(i); end;
     <br/>
     <br/>
     &nbsp;&nbsp;&nbsp;&nbsp;edFloorsUp.FillList(l);
     <br/>
     &nbsp;&nbsp;end;
     <br/>
    </code>
  </div>
</div>

---

<b><font size="3">[IEditEx](topic:.Custom.ComClasses.Ctrl.IEditEx.Default)</font></b>
<br/>
<br/>
Данный компонент в WEB имеет следующие особенности:
- Наследует все ограничения компонента [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)
- Не поддержан компонент переноса строки
<br/>

---

<b><font size="3">[ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default)</font></b>

Опция заморозки (<b>FreezeArea</b>) в WEB:
- работает только для области заголовков отчета
- управлять областью заморозки нельзя
- для работы заморозки родительский фрейм должен быть ограничен по высоте

Внешний вид:
- стили которые для компонента в WEB применяются ко всему родительскому блоку
- для всех ячеек таблицы задан белый цвет фона вне зависимости от размера элемента в ячейке
- если элемент таблицы не выбран, то элемент и его <b>border</b> прозрачный

---

<b><font size="3">[IGrid](topic:.Custom.ComClasses.Ctrl.IGrid.Default)</font></b>

Опция заморозки (<b>FreezeArea</b>) в WEB:
- не поддержано

Внешний вид:

- стили ячеек собираются из стилей строк и столбцов и глобальных настроек ячеек (cellSettings), при этом учитывается их приоритет;
- конечные стили ячеек отличаются от стилей на десктопе.

---

<b><font size="3">[IReport](topic:.Custom.ComClasses.Ctrl.IReport.Default)</font></b>

Опция заморозки (<b>FreezeArea</b>) в WEB:
- работает только для областей со стобцами аналитики и заголовков отчета
- управлять областью заморозки нельзя
- применяется только для случая, когда отчет строится как одна таблица

---

<b><font size="3">[ITimer](topic:.Custom.ComClasses.ITimer.Default)</font></b>

Минимально возможный интервал срабатывания 1 сек

---

<b><font size="3">[IPicture](topic:.Custom.ComClasses.Ctrl.IPicture.Default)</font></b>

В WEB имеет следующие особенности:
- отсутствует поддержка изображений в формате <b>wmf</b>;
- свойства <b>Shrink</b> и <b>Stretch</b> работают одинаково и подстраивают размер картинки под размер контейнера.

---

<b><font size="3">[IBrowser](topic:.Custom.ComClasses.Ctrl.IBrowser.Default)</font></b>

В WEB не отображаются сторонние сайты, у которых в заголовках приходит аттрибут на запрет отображения в <b>html</b> элементе <b>iframe</b> на сторонних ресурсах.
<br/>
Основное назначение данного компонента в WEB - поддержка разработки собственных компонентов, которые должны работать как в нативном клиенте, так и в WEB.



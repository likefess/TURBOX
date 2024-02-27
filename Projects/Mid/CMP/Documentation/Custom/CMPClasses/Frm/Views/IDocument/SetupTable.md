---
Link: CMP.Frm.Views.IDocument.@SetupTable
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Frm.Views.IDocument](Default)

# Процедура SetupTable
---

## Описание

    proc SetupTable (aTable :Ctrl.IControlsLayout; aSettings :Def.ISubtable)

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура настравает компонент таблицы, переданный в параметре aTable, на основании настроек переданных в подтаблице aSettings.
При выводе реквизитов, для реквизита проверяется условие видимости вызовом функции ApplySetting, класса Rec.Views.IDocument_Settings.


<!--
## Пример

    SetupTable...
-->


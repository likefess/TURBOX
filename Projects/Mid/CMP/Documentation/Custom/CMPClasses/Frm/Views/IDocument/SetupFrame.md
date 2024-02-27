---
Link: CMP.Frm.Views.IDocument.@SetupFrame
---

<!---  Навигация
[Имя проекта](#) :
-->
[CMP.Frm.Views.IDocument](Default)

# Процедура SetupFrame
---

## Описание

    proc SetupFrame (aFrame :Def.IFrame; aSettings :Def.ISubtable)

<!--
## Аргументы{#Args}

### Аргумент1

Описание аргумента 1
-->

## Назначение

Процедура настравает переданный в параметрах фрейм aFrame, на основании настроек переданных в подтаблице aSettings.
При выводе полей, для поля проверяется условие видимости вызовом функции ApplySetting, класса Rec.Views.IDocument_Settings.

<!--
## Пример

    SetupFrame...
-->


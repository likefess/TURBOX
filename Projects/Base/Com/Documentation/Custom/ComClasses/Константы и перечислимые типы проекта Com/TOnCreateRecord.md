# Тип TOnCreateRecord

## Описание

    type TOnCreateRecord = proc(aRec :Rec.IRecord);

## Параметры

**aRec** - создаваемая запись.

## Назначение

Тип TOnCreateRecord предназначен для задания процедуры-обработчика события,
возникающего при создании записи в картотеке.

Используется для задания события [OnCreateRecord](topic:.Custom.ComClasses.Ctrl.IEdit.OnCreateRecord)
класса [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default).
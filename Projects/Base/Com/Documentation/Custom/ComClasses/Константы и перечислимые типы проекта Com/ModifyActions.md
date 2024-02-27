# Перечислимый тип ModifyActions

## Описание

    type ModifyActions = (
      DeleteRecord      = 0
     ,UndeleteRecord    = 1
     ,MoveRecord        = 2
     ,CopyRecord        = 3
     ,RecordGroupOn     = 4
     ,RecordGroupOff    = 5
     ,CommentEvent      = 6
     ,UncommentEvent    = 7
     ,ExpandEvent       = 8
     ,CollapseEvent     = 9
     ,FastDeleteRecord  = 10
    );

## Назначение

Используется для задания действия при вводе значения в поле ввода или изменении значения флага.

Перечислимый тип ActionsOnType включает следующие константы:

**DeleteRecord** - удаление записи или набора записей;

**UndeleteRecord** - восстановление записи или набора записей;

**MoveRecord** - перемещение записи или набора записей;

**CopyRecord** - копирование записи или набора записей;

**RecordGroupOn** - преобразование простой записи в групповую;

**RecordGroupOff** - преобразование групповой записи в простую;

**CommentEvent** - комментирование операции или проводки в журнале;

**UncommentEvent** - раскомментирование операции или проводки (в журнале);

**ExpandEvent** - раскрытие операции на проводки (в журнале);

**CollapseEvent** - свертка операции (в журнале);

**FastDeleteRecord** - удаление записи без проверки ссылочной целостности.

Константы, определенные в данном типе, используются в обработчиках событий
[BeforeModify](topic:.Custom.ComClasses.Ctrl.ICardFile.BeforeModify)
и [OnModify](topic:.Custom.ComClasses.Ctrl.ICardFile.OnModify), а также в функциях
[DoBeforeModify](topic:.Custom.ComClasses.Ctrl.ICardFile.DoBeforeModify)
и [DoModify](topic:.Custom.ComClasses.Ctrl.ICardFile.DoModify)
класса [ICardFile](topic:.Custom.ComClasses.Ctrl.ICardFile.Default);
в функциях [DoBeforeModify](topic:.Custom.ComClasses.Ctrl.ICardTree.DoBeforeModify)
и [DoModify](topic:.Custom.ComClasses.Ctrl.ICardTree.DoModify)
класса [ICardTree](topic:.Custom.ComClasses.Ctrl.ICardTree.Default).

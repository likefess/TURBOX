---
Title: ChangeLog
Keywords: ChangeLog, Новенькое
---

# Новенькое

##10.11.2023
- Выпуск релиза версии 10.5.1 от 10.11.2023

##08.09.2023
<!-- Филатов -->
- Изменен порядок обработки событий при создании новой записи. Теперь обработчики, добавленные
  с помощью метода AddOnCreate (в массив Processing) выполняются после вызова метода DoCreate.
  Ранее было наоборот, обработчики из Processing выполнялись первыми.

##29.08.2023
<!-- Найдёнова -->
<b><i>Исправлено</i></b>:
- Учитывается [LookupField](topic:.Custom.ComClasses.Ctrl.IEdit.LookupField) при вызове универсального фильтра для конкретного столбца.
- Ролевой доступ - работает запрет на экспорт.
- Ролевой доступ - работает запрет на вход по логину, если не определяется сотрудник.
- Ролевой доступ - работает запрет на редактирование панели инструментов.
- Ролевой доступ - работает запрет на работу с таблицей глобальных переменных.
- Блокирование входа при установке ограничений в ролях.
- В диалогах на [CanvasGrid](topic:.Custom.ComClasses.Ctrl.Grids.CanvasGrid.Default) не дублируется групповой элемент.
- В отчётах отображается Web График
- Исправлена ошибка при открытии в ВЭБ панели с вложенными страницами

<b><i>Добавлено</i></b>:
- В запрос добавлен булевый параметр isSplitterOpen для фреймов, в которых используется Splitter. Показывает, открыт ли сейчас фрейм.
- В универсальный фильтр добавлены атрибуты, которые находятся в таблице картотеки (если они видимы и по ним можно фильтровать).
- Добавлена выгрузка свойств INode при изменении.
- Добавлена выгрузка [IGrid](topic:.Custom.ComClasses.Ctrl.IGrid.Default) с конкретными ячейками при изменении свойств конкретных ячеек.
- Диалог выбор помощи Canvas - дерево раскрывается на переданном топике.
- В диалогах на [CanvasGrid](topic:.Custom.ComClasses.Ctrl.Grids.CanvasGrid.Default) к элементам добавлена иконка по умолчанию.

##15.08.2023
<!-- Найдёнова -->
<b><i>Исправлено</i></b>:
- ICardFile - убрана вторая прокрутка во фрейме.
- Ролевой доступ - работает запрет на просмотр чужих напоминаний.
- Ролевой доступ - работает запрет на прикрепление файлов.
- Универсальный фильтр применяет правки при редактировании в текстовом режиме.

##16.08.2023
<!-- Осипов TXAPP-8997 -->
- Хранимые задания (Com.Jobs.Persistent) сделаны иерархическими.
  Структура записей произвольная.
- В класс заданий [Com.Job](topic:.Custom.ComClasses.Job.Default) добавлено новое свойство
  [CalcStep](topic:.Custom.ComClasses.Job.CalcStep), позволяющее создавать многошаговые или
  зависимые задания с ожиданием завершения, без удержания исполнителя.

##24.07.2023
- Выпуск релиза версии 10.5.1 от 24.07.2023

##20.07.2023
<!-- Филатов -->
- Новый дизайн форм: увеличенные отступы, новый дизайн основных кнопок и пр.
  Новый дизайн можно установить с помощью глобальной настройки DesignVersion = 2
  для всех пользователей по-умолчанию (если запись с таких кодом отсутствует,
  значит используется старый интерфейс), а также поднастроить с помощью
  пользовательских настроек.
- Плотность интерфейса: настройка, управляющая размерами отступов, что в итоге
  отражается на плотности информации на шаблонах. Параметр также можно установить
  в глобальных настройках (VisualDensity) и в пользовательских. Значение 1
  соответствует старому интерфейсу. Для нового интерфейса используется значение 4.
- Использование наборов кнопок в заголовках форм: все кнопки, кроме тех, что объявлены
  как PrimaryButton и SecondaryButton (новые свойства компонента IHeader), перемещаются
  в набор кнопок. Данный режим можно включить/выключить с помощью глобальной настройки
  UseButtonSet и/или соответствующей пользовательской настройки.
- Добавлена форма пользовательских настроек (Com.Frm.Config.UserSettings)
  На форме пока есть только 3 настройки (см. выше). Форму пока можно вызвать только
  с помощью диалога открытия произвольной формы (Alt-B).

##19.07.2023
<!-- Осипов TXAPP-8980, TXAPP-9039 -->
- Добавлена форма Com.Service.Status, отображающая статус диспетчера исполнителей и состояние топиков заданий.

  Форма выведена в меню Администрирование\Сервисы\Задания, исполнители.
  И в картотеку "Исполнители заданий", в группу меню "Дополнительно".

##17.07.2023
<!-- Осипов TXAPP-9183 -->
- Для нативного клиента в компонент [IFrame](topic:.Custom.ComClasses.Ctrl.IFrame.Default) добавлен метод
        OnAfterShow :proc(aSender :Ctrl.IFrame)
  Метод вызывается только при отрисовки фрейма в нативном клиенте.

##26.06.2023
<!-- Филатов TXAPP-8943 -->
- Для компонента IListButton поддержаны разделители
  Теперь в список компонент IListButton можно добавить компонент класса ISeparator, чтобы
  получить разделитель между группами команд, по аналогии с контекстным меню.

- Добавлен новый компонент IButtonSet - группа кнопок, объединенная рамкой.
  В IButtonSet помимо кнопок (IButton) можно добавлять разделители (ISeparator). Первый
  разделитель разделяет основную группу кнопок, которые доступны на экране сразу и
  вспомогательную группу, которые "прячутся" под "выпадайку" (IListButton), по аналогии
  с кнопками в IHeader. Последующие разделители разделяют группы команд внутри "выпадайки"
  (см. пункт выше).

- При включенной пользовательской настройке "Использовать наборы кнопок" кнопки в IHeader
  (кроме Master и Secondary) автоматически перемещаются в группу кнопок (IButtonSet)

- В IHeader теперь можно добавлять разделители (ISeparator). Если включено использование
  наборов кнопок, то разделители передаются и интерпретируются в компоненте IButtonSet, иначе
  игнорируются.
  Свойство MaxButton объявлено как Deprecated.

- В заголовок (IHeader) базовых классов IBlankWithFrames, IEditorWithFrames, ICardForm добавлен
  разделитель HeaderSeparator, чтобы разделение кнопок происходило также, как и с использованием
  MaxButton. В конкретных формах разделитель может некорректно интерпретироваться и нужно вручную
  его поправить.

##22.06.2023
<!-- Осипов TXAPP-9000 -->

- В классе [Com.Job](topic:.Custom.ComClasses.Job.Default) расширена поддержка методов исполнения задания
  [OnExecute](topic:.Custom.ComClasses.Job.OnExecute):

  Процедуры

        proc OnExecute1(aJob :Com.Job);
        proc OnExecute2(aJob :Com.Job; aParam :Variant);
        proc OnExecute3(aParam :Variant);

  Функции

        func OnExecute4(aJob :Com.Job):Variant;
        func OnExecute5(aJob :Com.Job; aParam :Variant):Variant;
        func OnExecute6(aParam :Variant):Variant;

##19.06.2023
<!-- Филатов TXAPP-9140 -->
- Для компонента Cmd2.IGroup добавлено новое свойство
        stored var IconName       :String
  Если свойство установлено, то соответствующая иконка используется для группы в меню и ролевом центре.
  Если не установлена, то в меню используются стандартные иконки раскрытой и закрытой группы, а в ролевом
  центре иконки нет.

##08.06.2023
<!-- Адаскин TXAPP-8707 -->
- Системные параметры отчёта (AutoBuildCtrl, BegDate, EndDate, Period) исключены из коллекции Parameters

##08.06.2023
<!-- Филатов TXAPP-9080 -->
- Изменена сигнатура методов класса [Com.IRecord](topic:.Custom.ComClasses.IRecord) (добавлен необязательный параметр):
           func ClassDescription(aRec :Selftype = nil) :String;
           func GetForeignKeyField(aRec :Selftype = nil) :String;

##07.06.2023
<!-- Осипов TXAPP-8988 -->
- В класс [Job](topic:.Custom.ComClasses.Job.Default) добавлено логическое поле [CheckCalcServer](topic:.Custom.ComClasses.Job.CheckCalcServer).

  При его установке, перед исполнением задания, будет проведена проверка доступности сервера расчетов.

##02.06.2023
<!-- Адаскин TXAPP-9012 -->
- Реализован новый грид `Ctrl.Grids.TreeGrid`, наследник `Com.Ctrl.Grids.CanvasGrid`,
  предназначенный для работы с древовидными источниками данных.  
  Поддержанные на текущий момент источники:
  дерево классов (`Ctrl.Grids.ClassTree`) и дерево записей (`Ctrl.Grids.RecordTree`).

  На базе `TreeGrid` реализован диалог выбора классов `Com.Services.TreeChooseClass`
  и диалог выбора записей `Com.Services.TreeChooseRecord`.  
  Пример использования в процедуре `AddChooseTreeButtons` класса `FrmTest.TestForm1` проекта `Demo`.

##01.06.2023
<!-- Адаскин TXAPP-9054 -->
- Изменена сигнатура методов класса `InfoBoard.Frm.Data.PanelViewer`
```
proc InitPanelPattern
proc SetupTileFrame(aFrame :Ctrl.IFrame; aTile :Ctrl.ITile; aOrientation :OrientationTypes = Vertical)
```
Параметры функции InitPanelPattern заменены на свойства класса `FPanelLayout` и `FBlendedReport` соответственно.

##31.05.2023
<!-- Филатов TXAPP-6667 -->
- Пользовательские настройки картотеки (видимость дерева, видимость навигационной панели,
  упорядочивание, текущая группа, текущая запись, а также раскладка столбцов картотеки и
  ее подтаблиц) теперь также сохраняются в разрезе LayoutName.
  Также в разрезе LayoutName сохраняются раскрытые боксы и раскладка столбцов таблиц форм.

##30.05.2023
- Выпуск релиза версии 10.5.1 от 30.05.2023

##25.05.2023
<!-- Филатов TXAPP-9053 -->
- Пользовательские настройки размеров фреймов на формах теперь сохраняются в разрезе LayoutName.
  По-умолчанию метод возвращает имя класса, т.е. в рамках формы действуют единые настройки.
        func LayoutName :String;
          Result = FullClassName(ClassType);
        end;
  Метод можно перекрыть и указать свой способ разбиения настроек. Например, чтобы для каждого
  редактора сохранялись свои настройки (например раскладка плиток на панели), нужно написать
        #Override
        func LayoutName :String;
          Result = inherited LayoutName + '_' + FRecord?.Code_;
        end;

##24.05.2023
<!-- Осипов TXAPP-7670 -->
- Константа ModalWindow :WindowStyles перенесена в клиентское расширение.

  Использование модальных окон допустимо только в клиентских классах (или в клиентских расширениях серверных классов).

- Для открытия формы в модальном окне, в класс [формы](topic:.Custom.ComClasses.Frm.IForm.Default) добавлен метод
  [ShowModal](topic:.Custom.ComClasses.Frm.IForm.ShowModal).

##23.05.2023
<!-- Осипов TXAPP-9057 -->
- В [диспетчере](topic:.Custom.ComClasses.Service.Dispatcher.Default) исправлен запуск исполнителей. Запуск происходит без ожидания ответа от диспетчера.
Проверка состояния запуска происходит на следующем шаге опроса.

- В [аварийных серверных исполнителях](topic:.Custom.ComClasses.Service.Listeners.Emergency.Default) исправлена обработка очереди заданий.
Перед получением сообщения из очереди, аварийный исполнитель запрашивает диспетчер о наличии исполнителей очереди.
Если исполнителей нет, задание возвращается с ошибкой.

##11.05.2023
<!-- Филатов TXCORE-1645 -->
- В картотеке фрейм FrameSubCardfile теперь по умолчанию отключен (помечен excluded).
  В картотеках, где предполагается использование подтаблиц, нужно явно включить этот фрейм.

##05.05.2023
<!-- Осипов TXAPP-8999 -->
- В класс [Com.Job](topic:.Custom.ComClasses.Job.Default) добавлено событие [OnFinish](topic:.Custom.ComClasses.Job.OnFinish),
  происходящее после обработки метода задания.

##03.05.2023
<!-- Осипов TXAPP-8324 -->
- Добавлен новый компонент "Топик задания" [IJobTopic](topic:.Custom.ComClasses.IJobTopic.Default).

  Топик представляет из себя одну из независимых очередей заданий для исполнения.

- Все возможные топики регистрируются в библиотеке [Com.JobTopics](topic:.Custom.ComClasses.JobTopics.Default)
  или в его расширениях.

  По умолчанию в библиотеке зарегистрированы три топика:

    * [DefaultWorker](topic:.Custom.ComClasses.JobTopics.DefaultWorker) - задания для серверных исполнителей
    * [DefaultRobot](topic:.Custom.ComClasses.JobTopics.DefaultRobot) - задания для консольных исполнителей (роботов)
    * [DeleteAsync](topic:.Custom.ComClasses.JobTopics.DeleteAsync) - асинхронное удаление записей на серверных исполнителях

- В классе Com.Vars добавлен метод получения кэшированной библиотеки [Com.JobTopics](topic:.Custom.ComClasses.JobTopics.Default):

        func AllJobTopics :Com.JobTopics;

- В класс [Com.Job](topic:.Custom.ComClasses.Job.Default), для выбора топика добавлены новые свойства:

    * [Topic](topic:.Custom.ComClasses.Job.Topic) - имя топика
    * [TopicName](topic:.Custom.ComClasses.Job.TopicName) - ссылка на топик

  пример использования:

        vJob = Com.Job.CreateFunc(...);
        vJob.Topic = Com.Vars.AllJobTopics.DefaultWorker;
        vJob.Run();

  если топик не выбран, или если задано его не корректное имя, будет использован топик
  [DefaultWorker](topic:.Custom.ComClasses.JobTopics.DefaultWorker), либо
  [DefaultRobot](topic:.Custom.ComClasses.JobTopics.DefaultRobot), в зависимости от параметров задания.

- Для задания асинхронного удаления записей выделен топик [DeleteAsync](topic:.Custom.ComClasses.JobTopics.DeleteAsync).
  Теперь асинхронное удаление не будет приводить к зависанию исполнения других заданий.

- Расширена поддержка методов исполнения задания. На исполнение можно передавать методы вида:

        proc proc2(aJob :Job; aParam :Variant);
        func func2(aJob :Job; aParam :Variant):Variant;

  которые будут получать ссылку на задание.

- В класс [Com.Job](topic:.Custom.ComClasses.Job.Default) добавлено новое свойство [Worker](topic:.Custom.ComClasses.Job.Worker),
  содержащее ссылку на исполнителя текущего задания:

  В методах исполнения с параметром (aJob :Job; ...) можно использовать проверку состояния записи
  исполнителя в циклических заданиях вида:
        while not aJob.Worker.Deleted do
          ...
        end;

  Следует аккуратно использовать и вызывать свойства, и методы из параметра (aJob :Job; ...).
  Такие конструкции легко могут привести к зацикленности.

##03.05.2023
<!-- Филатов TXAPP-8780 -->
- Добавил новое состояние переменной vsInputedManually - введена вручную. Т.о. теперь можно
  отличить случай, когда переменная вычислена в результате автопересчета/инициализации
  (ValueState = vsReady) и в результате ввода вручную/прямого присвоения
  (ValueState = vsManually).

  Для переменных вычисленных при помощи автопересчёта/инициализации будут вызываться пересчёты,
  даже если значение переменной при этом не изменилось.

  Правки обложены ключом компиляции StateManually = True

##02.05.2023
- Выпуск релиза версии 10.5.1 от 02.05.2023

##27.04.2023
<!-- Филатов TXAPP-8921 -->
- Для компонентов IControlCell, ITable и ICardFile/ISubCardFile добавлено новое свойство
        stored var ExportAlways       :Logical
  Если свойство установлено в True, то его состояние выгружается на web при каждом запросе.
  Свойство имеет смысл использовать для контролов с обработчиком OnOutput (который выводит
  некоторое составное свойство, а не просто форматирует текущее значение) или OnDraw
  (который меняет свойства контрола исходя из сторонних событий, не связанных с изменением
  значения контрола)

##14.04.2023
<!-- Филатов TXAPP-7950 -->
- Для компонента IGrid поддержаны команды CopyValue, CutValue, PasteValue и DeleteValue

- Компонент IGrid теперь поддерживает IPopupMenu. Дефолтное меню для IGrid
  содержит команды CloseForm, CopyValue, CutValue, PasteValue и DeleteValue

##12.04.2023
<!-- Филатов TX-4668 -->
- Для объекта IPopupMenu добавлено событие
        var OnShow    :proc(aSender :Ctrl.IPopupMenu)
  Событие вызывается перед отображением контекстного меню и в нем можно изменить
  доступность пунктов меню.

##05.04.2023
<!-- Филатов TXAPP-8864 -->
- Контрол [IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default) теперь можно связать с
  глобальной командой или локальной командой формы. В этом случае, если обработчик OnClick
  не указан, то вызывается соответствующая команда. Если обработчик указан, то вызывается
  указанный обработчик.
  Если для кнопки, связанной с командой не указана иконка, то она берется из команды.
  Доступность кнопки, связанной с командой, определяется доступностью команды.

##31.03.2023
<!-- Адаскин TXAPP-8805 -->
- Свойства `ReportType` класса `Rep.IReportForm` перенесены из inclass в inobject
  и возвращает корректный тип текущего отчёта.

- Свойства `PreventPrepare` класса `Rep.IReportForm` перенесено из inclass в inobject.

- Свойство `FReportType` объявлено `#final` в классах:
  `Frm.ITurnReport`, `Frm.ITransReport`, `Frm.IReferenceReport`
  `Rep.IReportTurns`, `Rep.IReportTrans`, `Rep.IReportRef`.

##30.03.2023
<!-- Филатов TXAPP-8910 -->
- В класс IClipboard добавлены методы
        proc BeginModify
        proc EndModify
        func HasFormat(aFormat :String) :Logical
        func Get(aFormat :String = ''; Encoding :Variant = nil) :Variant
        proc Put(aValue :Variant; aFormat :String = ''; aEncoding :Variant = nil)
  Для нативного клиента они перевызывают соответствующие методы класса Console
        proc ClipboardBeginModify
        proc ClipboardEndModify
        func ClipboardHasFormat (Format :String) :Logical
        func GetFromClipboard ({Format :String}; {Encoding :Variant}) :Variant
        proc PutToClipboard (Value :Variant; {Format :String}; {Encoding :Variant})
  Для серверного варианта значение(я) сохраняется(ются) в Storage FData, где индексом
  является формат клипборда. Таким образом, при использовании IClipboard на web-клиенте,
  значение будет сохранено на сервере и может быть использовано только в рамках запущенной
  сессии Турбо в алгоритмах, использующих IClipboard.

- В класс IControl добавлены интерфейсные методы
        func CopyValue(aContext :IOutputContext = nil) :Logical
        func CutValue(aContext :IOutputContext = nil) :Logical
        func PasteValue(aContext :IContext = nil) :Logical
        proc DeleteValue(aContext :IContext = nil)
  Методы обрабатывают копирование/вырезание/вставку/удаление текущего значения контрола.
  Пока методы поддержаны для
    - IControlCell - если контрол недоступен или обработчик при входе (если он есть) вернул
      False, то работает только копирование (для контролов IButton и IRadioButton методы
      ничего не делают)
    - ITable - вызывается соответствующий метод для текущей строки и колонки
    - ICardFile - вызывается соответствующий метод для текущей записи и колонки. Если
      inplace-редактирование запрещено, то работает только копирование
    - ISubCardFile - вызывается соответствующий метод для текущей структуры и колонки. Если
      inplace-редактирование запрещено, то работает только копирование
  Для хранения промежуточных значений методы используют класс IClipbord.

- Обработчики
        stored var OnCopy  :func(aSender :Ctrl.IEdit; aContext :IOutputContext) :Logical
        stored var OnPaste :func(aSender :Ctrl.IEdit; aContext :IContext) :Logical
  теперь можно использовать не только для нативного клиента, но и для серверного варианта.
  Для хранения промежуточных значений в обработчиках следует использовать класс IClipboard.
  При вызове команды Cut также вызывается обработчик OnCopy.

- В глобальный список команд добавлены команды
        CutValue           :ComManaging.ExecProcedure;
        CopyValue          :ComManaging.ExecProcedure;
        PasteValue         :ComManaging.ExecProcedure;
        DeleteValue        :ComManaging.ExecProcedure;
  Для нативного клиента они перевызывают соответствующие команды ядра, а для web-клиента
  вызывается соответствующий метод для текущего контрола.

  Эти команды можно использовать при создании контекстного меню.

- В контекстное меню TableMenu/DefaultMenu для ITable добавлены команды CopyValue, CutValue,
  PasteValue и DeleteValue.

##22.03.2023
<!-- Адаскин TXAPP-8800 -->
- Добавлен новый класс-контекст `Rep.IExplainContext`, служит для хранения контекста уточняемого отчёта.

- Объявлены устаревшими:  
  тип `TExplainEvent` класса `Consts`  
  метод `ShowExplaination` класса `Rep.IReport`,  
  методы `Explain`, `ShowExplaination` класса `Frm.IReportForm`  
  свойство `OnDrillDown` класса `Frm.IExplain`.  
  Им на смену пришли `ShowExplainationEx`, `TExplainEventEx`, `ExplainEx`, `ShowExplainationEx` и `OnDrillDownEx` соответственно.
  Все они работают с `IReportContext`.

- Переведены на работу с `IReportContext` методы:  
  `ChooseExplainReport` класса `Rep.IReport`,  
  `DrillDown` класса `Rep.IExplain`,  

- В класс `Frm.IReportForm` добавлен метод `CreateExplainEx`.

- Методы:  
  `AddExplain` класса `Rep.IReport`,  
  `AddExplainReport`, `AddInlineReport` класса `Frm.IReportForm`  
  поддерживают обработчики типа `TExplainEvent` и `TExplainEventEx`,
  однако поддержка `TExplainEvent` оставлена только для совместимости и в дальнейшем будет удалена.

- В методы:  
  `PreciseDates` класса `Rep.IReport`,  
  `CreateExplain`, `SetExplainParams` класса `Frm.IReportForm`,  
  `ShowFormEx` класса `Services.Explaination`  
  добавлен параметр `aRowType :Com.Consts.TExplainRow`
        type TExplainRow = (erCommon = 0, erTotal, erIncomingBalance, erOutgoingBalance)
  erCommon - обычная строка  
  erTotal  - итоговая строка  
  erIncomingBalance - строка входящего остатка  
  erOutgoingBalance - строка исходящего остатка  

- В методы `PreciseDates` классов `Rep.IReport` и `Rep.ISplitParam`
  добавлен параметр `var aPeriod :TimePeriods`.

##15.03.2023
<!-- Филатов TXAPP-8628 -->
- IVarLink ссылочного типа можно теперь связать и с переменной типа IRecord и с переменной типа
Record (ранее работало только с IRecord). Связка с Record имеет смысл когда требуется сохранение
значение между сессиями.

##10.03.2023
<!-- Филатов TXAPP-8494 -->
- Добавлена возможность добавлять в компонент [IPopupMenu](topic:.Custom.PopupMenu) (на данный
момент поддержан для [картотеки](ComClasses.Ctrl.ICardFile.Default) и
[таблицы](ComClasses.Ctrl.ITable.Default)) элементы класса IItem. Таким образом если в рамках
одной формы нужно настроить несколько разных PopupMenu, то теперь не требуется дублировать
команды, выполняющие одинаковые действия.

- Добавлена возможность использовать для пунктов PopupMenu команды из глобального списка команд.
Библиотека с основным списком команд добавлен на базовом уровне (Commands). При необходимости
можно добавить свою библиотеку команд.

- В компонент [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default) добавлены методы
для управления в контексте текущей строки `RowInsert`, `RowDelete`, `RowUp`, `RowDown`.

##15.03.2023
- Выпуск релиза версии 10.5.1 от 15.03.2023

##22.02.2023
<!-- Адаскин TXAPP-8752 -->
- В классе IDrawContext добавлено свойство:
        EditorClosed :String
  На нативном клиенте свойство имеет значение true если обработчик вызывается при закрытом редакторе и false при открытом.
  На web клиенте свойство всегда имеет значение true.

##13.02.2023
<!-- Адаскин TXAPP-8684 -->
- В диалоге Dlgs.Input поддержан параметр:
        aPlaceholder :String
  Подсказка, выводимая внутри поля ввода, если его значение не задано.
  По умолчанию отсутствует.

##08.02.2023
<!-- Адаскин TXAPP-8658 -->
- Свойство FIntReport класса IReport объявлено deprecated и будет
  перенесено в private в версии следующей за 10.5.1.  
  Вместо него следует использовать свойство IntReport.

##07.02.2023
<!-- Адаскин -->
- В диалоге выбора поля записи ChooseRecordField поддержаны параметры:
        aFieldType :VarTypes = nil
  Включать в диалог только поля указанного типа (кроме подтаблиц).
  Если aFieldType = varVariant, то в диалог включаются все поля без подтаблиц
        aOpenReference :Logical = true
  Возможен выбор по ссылочным полям. Если aOpenReference = false,
  то возможен выбор только полей записи/подтаблицы.

##02.02.2023
<!-- Адаскин TXAPP-8638 -->
- Для компонента IIndicator поддержано свойство
        Enabled :Logical
  Свойство доступно в Tuner и позволяет отключать показатели отчёта без удаления.

##01.02.2023
<!-- Филатов TXAPP-8494 -->
- В стандартное меню таблицы (TableMenu) добавлены команды "Кадр вверх" и "Кадр вниз".
  Само меню перенесено из IEditorWithFrames в IEditor.

- Свойство AddDefaultItems класса IPopupMenu объявлено устаревшим. Соответствующий
  функционал больше не работает.

- Компонент [IPopupMenu](topic:.Custom.PopupMenu) поддержан для
  [ICardFile](ComClasses.Ctrl.ICardFile.Default).

  По аналогии с TableMenu в ICardForm добавлено стандартное меню картотеки (CardMenu).
  Сейчас в нем команды "Закрыть форму", "Редактировать", "Добавить", "Добавить группу",
  "Дублировать", "Удалить" и "Восстановить". По умолчанию меню отключено.

- Вместо команд RowCommands для картотеки выгружается PopupMenu. Если PopupMenu для
  картотеки не установлено, то используется стандартное меню картотеки.

##17.01.2023
<!-- Осипов TXAPP-7074, TXAPP-7075, TXAPP-7770 -->
- Добавлена возможность управления компонентным доступом ко всем формам и компонентным командам.

- Изменено управление доступом к [классам меню](topic:.Custom.ComClasses.Cmd.IMenu.Default) и
  к [ролевым центрам](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).

  Доступ к [ролевым центрам](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default),
  созданным через [классы меню](topic:.Custom.ComClasses.Cmd.IMenu.Default),
  будет осуществляться через [правило доступа к меню](topic:.Custom.ComClasses.Access.ClassRules.Menu).

  [Правило доступа к ролевым центрам](topic:.Custom.ComClasses.Access.ClassRules.RoleCenter) теперь обрабатывает
  только классы [ролевых центров](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).

  Ограничения на доступ к ролевым центрам, наложенным ранее, необходимо будет скорректировать, добавив,
  при необходимости, ограничение на классы меню.

- Доступ для всех форм, классов меню, ролевых центров и команд, по-умолчанию **запрещен**.

- В стандартные базовые проектные роли [Admin](topic:.Custom.ComClasses.Access.Roles.Admin) и
  [DefUser](topic:.Custom.ComClasses.Access.Roles.DefUser) добавлены правила доступа ко всем формам,
  классам меню и ко всем компонентным командам.

  В карточке "Роль (набор прав) пользователя" все настроенные значения можно изменить (перекрыть),
  при наследовании роли пользователя от настроенной базовой проектной роли.

- В [группе доступа](topic:.Custom.ComClasses.Access.IAccessGroup.Default)
  добавлен флаг [FullAccess](topic:.Custom.ComClasses.Access.IAccessGroup.FullAccess).

  Он устанавливается при входе в сессию под административными правами "$FullAccess" и "$SafeMode".

  Установка флага снимает все проверки и даёт доступ ко всем классам форм, меню, ролевых центров и к компонентным командам.

##13.01.2023
<!-- Адаскин TXAPP-7920 -->
- Добавлен новый компонент Ctrl.IRadioButton

  Радиокнопки одной группы должны быть связаны с одним IValue
        Field :Fld.IValue
  Значение устанавливаемое в связанную переменную задаётся полем `StaticValue`

<!-- Адаскин TXAPP-8491 -->
- В классе RepCtrl.IWrapper и его наследниках у свойства Items удалён сеттер,
  а тип изменён на обобщённый:
     - для RepCtrl.IWrapper - IComponent
     - для RepCtrl.IWrapDimension - Rep.ISplitParam
     - для RepCtrl.IWrapContent - Rep.ISplitContent
     - для RepCtrl.IWrapIndicator - Rep.IIndicator
     - для RepCtrl.IWrapExplain - Rep.IExplain
     - для RepCtrl.IWrapControls - Rep.IRepControl

<!-- Филатов TXAPP-7648 -->
- С помощью обработчика OnDrawEx компонента [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default)
  теперь можно задать/изменить иконку. При этом иконку можно вернуть в виде ImageName, а можно в виде объекта
  Image. Значение в ImageName более приоритетно. Пример из Demo:
        proc EditProduct_OnDrawEx(aContext :Com.IDrawContext)
          var vProduct = EdtRec.Positions[aContext.Index].Product
          var vImage :Variant = vProduct.Pict.Value
            var vPrice = vProduct.Price
          if vImage <> nil and vImage is BinaryObject and not BinaryObject(vImage).Empty then
            aContext.Image = Image.Create
            aContext.Image.Assign(vImage as BinaryObject);
            aContext.ImageName = ''  -- чтобы не использовалось значение по-умолчанию
          elsif vPrice > 5000 then
            aContext.ImageName = 'Com.Admin'
          else
            -- остается значение по умолчанию
          end
        end


##12.01.2023
<!-- Филатов TXAPP-7648 -->
- Для компонент [IControlCell](topic:.Custom.ComClasses.Ctrl.IControlCell.Default) добавлены
  свойства
        stored var ImageName         :String
        stored var ImageSize         :Integer
  Таким образом теперь можно выводить иконку не только в
  [IButton](topic:.Custom.ComClasses.Ctrl.IButton.Default) и
  [IStatic](topic:.Custom.ComClasses.Ctrl.IStatic.Default), но и для
  [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default),
  [ICheckBox](topic:.Custom.ComClasses.Ctrl.ICheckBox.Default) и IRadioButton

##28.12.2022
<!-- Адаскин TXAPP-7938 -->
- В классе ICardFile добавлено событие OnRearrange
        OnRearrange  :proc (aAction :RearrangeActions; aColumn :Ctrl.IControl)
  Событие срабатывает после изменения свойств картотеки (см. Com.Consts.RearrangeActions).

  Deprecated-метод OnRearrange удалён.

##22.12.2022
<!-- Филатов TXAPP-7425 -->
- Для компонент IHeader и IBox появилась возможность настраивать свойства Title через crf-редактор. В редакторе компонентов
IHeader и IBox появилось свойство Title. Если нажать на плюсик у этого свойства, то появятся свойства компонента Title,
которые можно настроить как обычные свойства компоненты.

##13.12.2022
<!-- Филатов TXAPP-8072 -->
- Добавил crf для IEditor. В нем описание EdtRec, Variables и RootFrame
  crf IEditorWithFrames теперь наследуется от IEditor
  Таким образом теперь у всех бланков редакторов по умолчанию добавлена библиотека EdtRec, надо только изменить класс библиотеки.

##22.11.2022
<!-- Филатов TXAPP-8286 -->
- В атрибуте DependsOn метода OnCalc появилась возможность указывать не только поля того же контейнера,
  где находится пересчитываемое поле. Теперь можно указывать зависимость поля таблицы от поля
  в шапке и наоборот поля в шапке от поля в таблице. Например:

        -- пересчет итогов при изменении суммы в любой строке подтаблицы Position
        #Attr DependsOn="Positions.Sum";
        func Total_OnCalc(aSender :Com.Fld.IValue) :Variant;
          Result = Positions.SumOfField("Sum");
        end;

        -- пересчет суммы со скидкой в строке подтаблицы при изменении скидки, указанной в шапке
        #Attr DependsOn="Sum, Owner.Discount";
        func DiscountedSum_OnCalc(aSender :Com.Fld.IValue) :Variant;
          Result = Round(Sum * (1 - Owner.Discount / 100), 2);
        end;

  При изменении поля в шапке будут пересчитаны зависимые поля во всех строках подтаблицы.
  Уровень вложенности подтаблиц, вообще говоря, может быть любым, т.е. допустимы зависимости вида
  'Subtable1.Subtable2.Field' или 'Owner.Owner.Field'.
  В качестве "имени" подтаблицы нужно указывать CompId компоненты, а не наименование переменной,
  в которой хранится ссылка на подтаблицу. При использовании метода AddSubtable CompId у созданной
  подтаблицы формируется автоматически. Чтобы указать зависимость, нужно в таком случае явно указать
  значение CompId.

        var vSubtable = AddSubtable(...)
        vSubtable.CompId = 'MySubtable'

##26.10.2022
<!-- Адаскин TXAPP-7332 -->
- В классе IReport добавлены события
        var OnGetAccFilter    :func :String
        var OnGetParamFilter  :func :String
  События позволяют установить внешние фильтры на счета и параметры соответственно.

##19.10.2022
<!-- Адаскин TXAPP-8098 -->
- В формулах параметров отчёта поддержаны макросы.
  Макросы имеют вид `%ИмяПараметра` и заменяются значением одноименного параметра отчета.
  Для ссылочных полей возвращается Record.
  Так же допустим макрос `%Self`, заменяющийся значением текущего параметра.
  В именах макросов допустимы только буквы, цифры и знак подчеркивания.
  Неизвестные макросы игнорируются.

  Например формула "при обзоре":
        If(%Группа = nil, 'GroupDoc = nil', 'GroupDoc is ' + %Группа.DocIDStr)
  будет преобразована в формулу:
        If(FReport.Parameters['Группа'].Inner = nil, 'GroupDoc = nil', 'GroupDoc is ' + FReport.Parameters['Группа'].Inner.DocIDStr)

##13.10.2022
<!-- Адаскин TXAPP-8051 -->
- Для перечислимых полей с возможностью свободного ввода значений на веб передаются настройки идентичные
  строковому полю с установленным флагом ShortList. Таким образом перечислимые поля веб-клиента начинают
  работать аналогично нативному клиенту.

##07.10.2022
<!-- Адаскин TXAPP-8051 -->
- Для строковых IEdit поддержан флаг ShortList.
  Если флаг ShortList установлен и в List заполнен перечень возможных значений,
  в поле становится возможен и выбор из списка, и произвольный ввод значений (в т.ч. через автокомплит).
  Т.е. поле будет себя вести аналогично перечислимому полю с возможностью свободного ввода значений.

##14.09.2022

<!-- Филатов -->
- Если разрешено изменять размер столбца [таблицы](ComClasses.Ctrl.ITable.Default), то двойной
  клик на разделителе колонок (в заголовке таблицы) приводит к восстановлению исходного
  значения ширины колонки.

##06.09.2022

<!-- Филатов -->
- Для команды IOpenForm добавлен новый параметр
        AlwaysOpen     :Logical;
  Если параметр не установлен (или равен False), то перед открытием формы делается предварительный
  поиск уже открытой формы данного класса и если таковая есть, то она делается активной, а новая
  форма не открывается. Если параметр равен True, то новая форма открывается всегда.

##02.09.2022
<!-- Русов -->
- Модуль "Администрирование" перенесен из проекта Bas в проект Com (Menu.Modules.Admin)
- RootURL теперь хранится в URL encoded формате. Все манипуляции с ним должны делаться с учетом этого факта.
- В базовый класс картотеки Frm.ICardForm добавлена кнопка ButtonCancel для отмены Inplace редактирования.
  в некоторых наследниках может потребоваться изменение HeaderFrame.MaxButton
- В проекте Admin настроен интерфейс администрирования
- В проекте Admin добавлена настройка доступа к инф. базам, не требующая правок Servers.ini.
  Для того чтобы это работало в Servers.ini нужна сделать след. минимальные настройки:

        [HTTP\Access]
        Admin=/admin* $Run Infobase=Admin Root=/admin
        ib=re:/ib_([%\w]*)(/.*)? $Run Infobase=?Re($1) Root=/ib
        Default=/* $Run Infobase=Admin Root=/ Enter=ib

        [HTTP\Alias\Run]
        ProcAddr=localhost
        DataAddr=localhost
        Call=WebSrv.Run
        SessionID=?Header(sessionID)

   И создать инф. базу Admin на основе проекта Admin. После этого при подключении к host'у по корневому адресу
   будет выдан список имеющихся инф. баз и возможно подключение к любой из них. Для настройки списка доступных
   баз в проекте Admin добавлена команда "Настройки WEB доступа"


##31.08.2022

<!-- Филатов -->
- Если на форме используется компонент [ICardFile](ComClasses.Ctrl.ICardFile.Default), то в методе
  AfterInit данной формы необходимо для каждого такого компонента вызвать метод InitColumns

##23.08.2022

<!-- Филатов -->
- Свойство Order класса ISubtable объявлено как deprecated. В версии 10.5.1 свойство будет удалено.
  Для упорядоченных подтаблиц следует использовать ISubtableView.

- Свойства SubtableFilter и Order класса ISubtable теперь невозможно менять, если на основании этой
  подтаблицы создавались объекты ISubtableView. Вообще если предполагается изменение фильтра и/или
  упорядочивания, то лучше сразу использовать ISubtableView.

##15.08.2022

<!-- Филатов -->
- Если столбец таблицы имеет не фиксированную ширину (FixSize = False или не указан) и таблица не адаптивная
  (Adaptive = False или не указан), то ширину такого столбца теперь можно изменять вручную. Никаких специальных
  свойств для этого указывать не надо. Размер можно изменять в пределах от MinWidth до MaxWidth. Изменить ширину
  можно только в заголовке таблицы. Если у столбца нет своего заголовка, то размер такого столбца изменить нельзя.
  Если группа столбцов объединена общим заголовком, то при изменении его размера будет меняться ширина последнего
  столбца в группе. Измененные размеры сохраняются в пользовательских настройках и будут использованы при открытии
  следующих форм этого класса. Чтобы сбросить пользовательские настройки конкретной таблицы нужно вызвать метод
        proc ResetUserLayout(aControl :Ctrl.IControl)
  где в качестве aControl нужно указать таблицу. При вызове метода Reinit все пользовательские настройки
  ширин столбцов сбрасываются.

  В проекте Demo для формы Invoice настроен пример таблиц, в которой можно менять размеры столбцов.
  Также в контекстном меню для этой таблицы настроена команда "Восстановить раскладку".

## 02.08.2022

<!-- Филатов -->
- Изменилась работа с Processing (пересчетами). Параметр aType метода AddProcessing теперь обязательный.
  Значение типа пересчета теперь не может быть равно 0. В связи с этим изменились значения некоторых констант:

  Класс Fld.IValue
        const peInput                 :Integer = 0;
        -->
        const peInput                 :Integer = 1;
  Класс Ctrl.IEdit / Ctrl.ICheckBox
        const peInput                 :Integer = 0;
        const peInputEx               :Integer = 1;
        const peVerify                :Integer = 2;
        const peVerifyEx              :Integer = 3;
        -->
        const peInput                 :Integer = 1;
        const peVerify                :Integer = 2;
        const peInputEx               :Integer = 3;
        const peVerifyEx              :Integer = 4;
  Класс IStorage
        const peCreate                :Integer = 0;
        const peDelete                :Integer = 3;
        const peRead                  :Integer = 4;
        -->
        const peCreate                :Integer = 1;
        const peDelete                :Integer = 2;
        const peRead                  :Integer = 3;
  Класс Rec.IRecord
        const peDuplicate             :Integer = 1;
        const pePost                  :Integer = 2;
        -->
        const peDuplicate             :Integer = 4;
        const pePost                  :Integer = 5;
  Класс Frm.ICardForm
        const peCreateRecord          :Integer = 100;
        -->
        const peCreateRecord          :Integer = 10;

## 01.08.2022

<!-- Адаскин, TXAPP-7617 -->
- В компонент Rep.ISplitContent добавлены свойства
        stored var OutputType :TOutputType := otValue
        stored var OutputEnum :String
        stored var OutputFunc :String
        var OnOutput :Function

  Это позволяет подменить отображаемое значение элемента вывода.  
  Если OutputType = otValue, то подмена не производится (по умолчанию).  
  Если OutputType = otEnum, то подмена делается по перечислению указанному в поле OutputEnum.
  OutputEnum заполняется как для перечислимых полей, в формате "Описание|Значение".  
  Если OutputType = otFunc, то подмена делается при помощи функции указанной в OutputFunc, либо, если она не задана, обработчика OnOutput.
  OutputFunc заполняется в формате "ИмяПроекта.ИмяКласса.ИмяФункции", может использоваться любая inclass-функция одного аргумента.

  Для элементов вывода простых типов возможна настройка в пользовательских отчётах, на странице Разрезы.

## 15.07.2022

<!-- Адаскин -->
- У методов Open, OpenPeriod и CreateEmbedded класса Com.Rep.Viewer удалён необязательный параметр AutoBuild :Logical = true
  Теперь значение AutoBuild берётся из параметров отчёта.
  При необходимости задавать собственное значение AutoBuild 
  вызов Open/OpenPeriod заменяется на
        var vViewer = CreateEx(...)/CreatePeriod(...)
        vViewer.ReferrerForm = ...
        vViewer.AutoBuild    = ...
        vViewer.Show
  для CreateEmbedded достаточно установить флаг AutoBuild сразу после
        var vViewer = CreateEmbedded(...)
        vViewer.AutoBuild = ...

##11.07.2022

<!-- Филатов -->
- Для объекта IItem добавлено свойство
        var HasCaption  :Logical := True
  Если значение равно False, то данный пункт ролевого центра отображается без подписи
  (только иконка). Флаг доступен только программно.

##04.07.2022

<!-- Филатов -->
- Теперь [IListButton](topic:.Custom.ComClasses.Ctrl.IListButton.Default) можно использовать
  внутри [IListButton](topic:.Custom.ComClasses.Ctrl.IListButton.Default), а также в
  выпадающем списке [IHeader](topic:.Custom.ComClasses.Ctrl.IHeader.Default)

##27.06.2022

<!-- Адаскин -->
- Для нативного клиента в компонент [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default) добавлены обработчики
        OnCopy  :func(aCtrl :Ctrl.IEdit; aIndex :Integer) :Logical
        OnPaste :func(aCtrl :Ctrl.IEdit; aIndex :Integer) :Logical
  Вызываются при копировании/вставке из буфера обмена и должны возвращать true, если требуется выполнить действия по умолчанию.

##22.06.2022

<!-- Филатов -->
- Метод CreateSubtableView теперь можно вызывать для подтаблиц с фильтром/упорядочиванием

##21.06.2022

<!-- Филатов -->
- В компонент [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default) добавлено свойство
          stored var AutoLock           :Logical;
  Свойство управляет соответствующим свойством TemplateCell. Для web-клиента значение
  игнорируется. По-умолчанию свойство равно True, если IEdit связан с полем/переменной
  (IField, IVar и т.п.) записи/структуры, в остальных случаях умолчание равно False.

##20.06.2022

<!-- Филатов -->
- Обработка изменения свойства Root для картотеки. Теперь изменение свойства Root на открытой
  картотеке приводит к перестроению дерева и картотеки. Если текущий элемент не попадает под
  новое ограничение, то текущая группа сбрасывается в корень картотеки

##17.06.2022

<!-- Русов -->
- Адаптивность колонок в таблице.

  Для объекта [ITable](topic:.Custom.ComClasses.Ctrl.ITable.Default) добавлено свойство
          stored var Adaptive           :Logical
  Если Adaptive = True, то ширина столбцов подбирается автоматически исходя из исходных
  ширин и значению свойств FixSize, MinSize, MaxSize. Работа ведется аналогично функционалу
  Adaptive для IGroup.

##16.06.2022

<!-- Филатов -->
- Поддержка свойства [Freezed](topic:.Custom.ComClasses.Ctrl.ITable.Freezed). Если у ITable
  установлено свойство Freezed, то для фрейма, в котором находится эта таблица, устанавливается
  заморозка по границе шапки таблицы. Если в одном фрейме несколько таблиц с Freezed = True, то
  замораживается только первая из них.
  Свойство Freezed для ITable теперь доступно в crf-редакторе

  P.S. Управлять заморозкой нужно именно через свойство Freezed объекта ITable. В IFrame свойство
  оставлено для совместимости старого режима таблицы и для внутренней реализации.

##10.06.2022

<!-- Филатов -->
- Обработчик Frame_OnSwitch переехал из BaseBlank в extIFrame. Если в надпроектах используется перекрытие/расширение
  для этого обработчика, то нужно это перекрытие/расширение также перенести в расширение IFrame

##03.06.2022

<!-- Филатов -->
- Для правильной работы фрейма с растягивающимся по границам фрейма элементом (Picture, JSControl, подзагруженная форма),
  расположенном на закладке, нужно написать такие строчки кода:
        var vNewFrame = TabsFrame.AddNewFrame(...)
        vNewFrame.AutoSize = False
        vNewFrame.MinSize  = 70  -- тут нужно указать минимальный размер, меньше которого будет появляться скроллер
  Свойства нужно устанавливать для фрейма-закладки, при этом растягивающийся элемент может находится на субфрейме
  этой закладки.
  Пример можно посмотреть на форме Bas.Frm.Ref.Calendar.

##02.06.2022

<!-- Филатов -->
- Изменился формат обработчиков компонента [IBox](topic:.Custom.ComClasses.Ctrl.IBox.Default)
        stored var OnVerifyCollapsed :func(aSender :Ctrl.IBox; var aValue :Boolean; aSource :CollapseSources) :Logical;
        stored var OnChangeCollapsed :proc(aSender :Ctrl.IBox; aSource :CollapseSources);
  Добавлен новый параметр Source типа
        type CollapseSources   = (csNone = 0,
                                  csPreSet = 1,
                                  csManual = 2)
  csPreSet - означает, что вызов происходит при первоначальной установке свойства при инициализации формы;
  csManual - означает, что происходит изменение свойства при ручном сворачивании/разворачивании бокса;
  csNone - программная установка свойства.

<!-- Бежнар -->
- [IPdfViewJS](topic:.Custom.ComClasses.Ctrl.IPdfViewJS.Default) - добавлен новый компонент для отображения файлов в формате PDF.

##30.05.2022

<!-- Бежнар -->
- [IDiagram](topic:.Custom.ComClasses.Ctrl.IDiagramJS.Default) - Добавлен новый компонент для отображения схем и диаграмм.

##20.05.2022

<!-- Адаскин -->
- В компонент [IGroup](topic:.Custom.ComClasses.Ctrl.IGroup.Default) добавлено свойство
        HasCaption :Logical;
  Для [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default)'ов входящих в группу задаёт умолчание свойства [HasCaption](topic:.Custom.ComClasses.Ctrl.IEdit.HasCaption).

##28.04.2022

<!-- Филатов -->
- Изменен формат обработчика OnHint для компонент, унаследованных от IControlCell. Новый формат
        stored var OnHint :func(aSender :Ctrl.IControlCell; aContext :IContext; var aText :String) :Logical;
  С помощью параметра aContext можно узнать индекс строки таблицы, для которой запрашивается подсказка.

##13.04.2022

<!-- Осипов -->
- В объект [IForm](topic:.Custom.ComClasses.Frm.IForm.Default "Интерфейс IForm") добавлен новый метод

        #help `Установка видимости`;
        proc SetVisibility;
        end;

  который ранее был в объекте [IEditor](topic:.Custom.ComClasses.IEditor).
  В [IEditor](topic:.Custom.ComClasses.IEditor) метод оставлен в режиме совместимости:

        #Override;
        proc SetVisibility;
          inherited SetVisibility();
        end;

##29.03.2022

<!-- Филатов -->
- Для объекта ISubtable добавлен новый метод
        func CreateSubtableView(aFilter :String = ''; aOrder :String = '') :ISubtable
  метод возвращает фильтрованный/сортированный объект ISubtable на ту же физическую подтаблицу,
  что и исходный объект ISubtable. В отличии от "прямого" создания фильтрованного ISubtable,
  в случае SubtableView все изменения сделанные в SubtableView автоматически отражаются в
  основном объекте ISubtable, а также других SubtableView. И наоборот, все изменения в основном
  объекта ISubtable автоматически отражаются во всех SubtableView.

  CreateSubtableView нельзя использовать для виртуальных подтаблиц.

##10.02.2022

<!-- Осипов -->
- Добавлен новый компонент [IRoleCenter](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).
  С помощью него можно создавать новые ролевые центры (РЦ).

  Старые ролевые центры, наследники компонента [IMenu](topic:.Custom.ComClasses.Cmd.IMenu.Default),
  рекомендуется перевести на наследование от [IRoleCenter](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).

- Добавлен новый РЦ "Menu.RoleCenters.All", который динамически заполняется всеми ролевыми центрами,
  наследниками класса [IRoleCenter](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).

  Для совместимости с предыдущими версиями, "Menu.RoleCenters.All" заполняется ролевыми центрами,
  указанными в классе "Bas.Menu.Panels.RoleCenters".

  Ролевые центры из класса "Bas.Menu.Panels.RoleCenters", являющиеся наследниками компонента
  [IMenu](topic:.Custom.ComClasses.Cmd.IMenu.Default), дополнительно помечаются свойством
  [IsRoleCenter](topic:.Custom.ComClasses.Cmd.IMenu.IsRoleCenter) = True.

- В роли (набор прав) пользователя добавлена возможность ввода ограничений на доступность к ролевым центрам.
  И заблокирована возможность выбора РЦ в качестве "стартовой формы".

- При старте сессии теперь открывается РЦ "Menu.RoleCenters.All", при наличии доступа более чем к одному РЦ.

  Если пользователю доступен только один РЦ, то будет открыт именно он.

<!-- Адаскин -->
- Возможность редактирования ролевого центра оставлена только для наследников компонента
  [IRoleCenter](topic:.Custom.ComClasses.Cmd.IRoleCenter.Default).

  Для наследников компонента [IMenu](topic:.Custom.ComClasses.Cmd.IMenu.Default) оставлена
  только возможность удалить/изменить добавленные ранее команды.

- В компоненте [IMenu](topic:.Custom.ComClasses.Cmd.IMenu.Default) свойства
  [IsRoleCenter](topic:.Custom.ComClasses.Cmd.IMenu.IsRoleCenter) и
  [IsTurboMenu](topic:.Custom.ComClasses.Cmd.IMenu.IsTurboMenu) объявлены устаревшими.

##31.01.2022

<!-- Филатов -->
- Изменено поведение контрола [IEdit](topic:.Custom.ComClasses.Ctrl.IEdit.Default) при наличии
  у него обработчика [OnLookup](topic:.Custom.ComClasses.Ctrl.IEdit.OnLookup).
  Теперь если обработчик вернул True, то продолжается стандартная обработка нажатия на кнопку обзора.

##30.12.2021

<!-- Филатов -->
- Добавлен новый компонент [IPopupMenu](topic:.Custom.PopupMenu). С помощью него можно
  настраивать контекстное меню контролов формы, в частности для WEB-клиента. На данный момент
  поддержано только для [ITable](ComClasses.Ctrl.ITable.Default).

  Чтобы настроить контекстное меню таблиц нужно сначала создать объект
  [IPopupMenu](topic:.Custom.PopupMenu), а затем в свойстве PopupMenu компонента
  [ITable](ComClasses.Ctrl.ITable.Default) указать ссылку на созданный объект. Для удобства
  настройки в базовых контейнерах IBlankWithFrame и IEditorWithFrame добавлено контекстное
  меню TableMenu, по-умолчанию отключенное. В конкретных формах можно включить и расширить
  TableMenu, либо по образцу настроить свое.

  В контекстное меню можно добавить команду, т.е. любой наследник
  [ICommand](ComClasses.ICommand), разделитель [ISeparator](ComClasses.ISeparator),
  а также подменю [ICommandGroup](ComClasses.ICommandGroup), в которое в свою очередь можно
  добавить аналогичные компоненты.

- Исправлена ошибка с регистрацией команд ExecCommand.

- Исправлена ошибка программного удаления/добавления/перемещения позиции при снятом флаге
  CanDelete/CanInsert/CanMove

##26.12.2021

<!-- Филатов -->
- Для компоненты IValue добавлен новый метод
        func Clone :Selftype;
  Метод возвращает дубликат объекта IValue, но не привязанный к Owner,
  поэтому при использовании нужно сразу делать привязку
        var vComponent = DefStruct.Component
        for var I = 1..vComponent.Count do
          var vComp :IValue = vComponent.ItemsByNumber[I];
          AddComp(vComp.Clone)
        end
  При использовании это функции, замыкания-обработчики (OnCalc,
  OnChange и пр.) не копируются, а остаются в единственном экземпляре,
  т.о. это можно использовать только если замыкания не привязаны
  к контейнеру, например описаны в стороннем объекте.


##16.12.2021

<!-- Филатов -->
- Для компонент, унаследованных от IControlCell, добавлено новое событие
        stored var OnHint :func(aSender :Ctrl.IControlCell; var aText :String) :Logical;
  Если обработчик возвращает True, то используется подсказка, указанная в свойстве Hint контрола.
  Иначе используется текст из переменной aText.

##15.12.2021
<!-- Присакарь -->

Добавлен базовый класс [IJSControl](topic:.Custom.JSControl) для создания элементов управления на основе библиотек JavaScript.

## 06.12.2021

<!-- Осипов -->
  - Изменились методы установки заголовка окна и формы (выводится в верхней части формы, во фрейме "HeaderFrame").

    Описание формы (Caption) поддерживает два варианта работы, автоматически изменяемый и постоянный ручной.

    - Для ввода постоянного значения заголовка окна, необходимо присвоить нужное значение полю "Caption".
       Присвоение можно описать в процедуре Init или задать в редакторе crf:
            proc Init;
              inherited Init;
              Caption = 'Постоянный заголовок окна';
            end;

       При необходимости, аналогичным способом, можно отдельно задать заголовок формы (во врейме "HeaderFrame"):
            proc Init;
              inherited Init;
              Caption = 'Постоянный заголовок окна';
              HeaderFrame?.Caption = 'Постоянный заголовок формы';
            end;

    - В автоматическом режиме, в заголовок простой формы выводится её наименование, что фактически совпадает с ручным режимом.

    - Для автоматического описания формы-редактора, используется следующий порядок получения заголовка: <"Описание редактора": "Описание записи">.

       Для описания редактора используется описание класса формы, описание класса IRecord или описание класса записей.

       Для описания записи используется получение значений описательных полей записи.

  - Обновление заголовков происходит автоматически, при изменении любого поля формы.
    По умолчанию, заголовок окна и формы одинаковые.

  - При необходимости, можно изменить правила формирования описания.

    Для изменения описания заголовка окна, необходимо перекрыть метод:
        func FormDescriptionEx (FullDescribe :Logical = True):String;
          Result = "Своё описание заголовка окна";
        end;

    Для изменения описания заголовка формы в HeaderFrame-е, необходимо перекрыть метод:
        proc RefreshCaption;
          inherited RefreshCaption;
          HeaderFrame?.Caption = "Своё описание заголовка формы";
        end;

  - В компонент [IHeader](ComClasses.Ctrl.IHeader.Default.md) добавлено свойство [FullHeaderDescribe](ComClasses.Ctrl.IHeader.FullHeaderDescribe.md),
    логического типа, которое по умолчанию имеет значение "истина".

    В этом случае в заголовок выводится полное описание вида: <"Описание редактора": "Описание записи">.

    Если "HeaderFrame.FullHeaderDescribe=false", то описание будет выводится в сокращенном виде <"Описание записи">.

  - Функции "WindowCaption" и "FormDescription" объединены в одну.

    Функция объявлена устаревшей, но пока продолжает использоваться. Значение функции считается приоритетным и, при её наличии, автоматическое присвоение отключается.

## 25.11.2021

<!-- Филатов -->
- Для компонент [ICardFile](ComClasses.Ctrl.ICardFile.Default) и [ICardTree](ComClasses.Ctrl.ICardTree.Default)
  добавлено новое свойство
        stored var AutoSelect   :Logical := True;
  Если флаг установлен, то запрос дерева/картотеки открывается автоматически при открытии формы. Иначе
  дерево/картотека откроются пустыми.

## 24.11.2021

<!-- Филатов -->
- Для компоненты [ICardFile](ComClasses.Ctrl.ICardFile.Default) добавлено новое свойство
        stored var ShowTotal :Logical;
  Свойство управляет видимостью строки итогов в картотеке

- Для компоненты [IEdit](ComClasses.Ctrl.IEdit.Default) добавлено новое свойство
        var CanSummary :Logical;
  Свойство используется только для картотеки и управляет показом итогов для конкретного столбца

## 10.11.2021

<!-- Филатов -->
- В компоненты [ICommand](ComClasses.ICommand) и [ICommandGroup](ComClasses.ICommandGroup) добавлено новое свойство
        stored var ShortName :String;
  Это имя будет использоваться как часть составного имени команды. Например, если команда с ShortName='Sales' лежит
  в группе команд с ShortName='Documents' а она в свою очередь в группе с ShortName='SCM', то команда будет
  зарегистрирована с именем 'SCM.Documents.Sales'.

  Если значение ShortName явно не задано, то оно приравнивается наименованию компоненты CompID. Но в отличии от CompID
  значение ShortName не обязано быть уникальным во всем контейнере группы команд, а только в рамках одного уровня,
  чтобы иерархическое имя команды получилось уникальным.

## 28.10.2021

<!-- Филатов -->
- Теперь свойствами Hierarchical и HasTree класса [ICardForm](ComClasses.ICardForm) можно управлять извне.
  Например, чтобы при выборе значения в поле из иерархической картотеки открыть ее без иерархии и без дерева
  нужно для IEdit установить обработчик
        proc EditProduct_OnOpenCardForm(aSender :Com.Ctrl.IEdit; aIndex :Integer; aCardForm :Com.Frm.ICardForm);
          aCardForm.Hierarchical = False;
          aCardForm.HasTree      = False;
        end;

## 27.10.2021

<!-- Филатов -->
- В компонентах [ITable](ComClasses.Ctrl.ITable.Default) и [IFrame](ComClasses.Ctrl.IFrame.Default)
  переименованы методы
        proc DoDelete(aIndex :Integer);
        proc DoInsert(aIndex :Integer);
        proc DoChangePosition(aIndex :Integer; aMoveUp :Logical);
        -->
        proc Delete(aIndex :Integer);
        proc Insert(aIndex :Integer);
        proc ChangePosition(aIndex :Integer; aMoveUp :Logical);

## 13.10.2021

<!-- Филатов -->
- Изменилась работа со свойством Printed контролов. Ранее при установке свойства Visible синхронно
  менялось и Printed. Теперь информация про печатаемость контрола хранится в трехпозиционном поле со
  значениями Default/Yes/No. Если значение Default, то Printed определяется исходя из свойства Visible,
  иначе в соответствии со своим значением. Интерфейсный метод Printed для совместимости возвращает
  логическое значение, поэтому сбросить значение в Default не получится.

## 08.10.2021

<!-- Филатов -->
- Компонент [IStatic](ComClasses.Ctrl.IStatic.Default) теперь можно использовать в таблице. При этом
  по-умолчанию для него нет заголовка, т.к. предполагается, что он будет использоваться в группе с
  другими компонентами. Если же для компоненты [IStatic](ComClasses.Ctrl.IStatic.Default) требуется
  свой заголовок, то ее нужно "обернуть" в группу, где в частности можно будет указать надпись в заголовке.

## 30.09.2021

<!-- Филатов -->
- Изменен формат обработчика OnClick класса [IPicture](ComClasses.IPicture). Теперь это не процедура, а функция,
  возвращающая логическое значение. Если обработчик возвращает True, то вызываются стандартные действия. Например,
  при клике на http-ссылку в svg, откроется браузер на указанной странице.

## 04.08.2021

<!-- Филатов -->
- Изменена работа со свойством Current компонента [ICardFile](ComClasses.Ctrl.ICardFile.Default "Интерфейс ICardFile").
  Во-первых, теперь нет необходимости вызывать метод SetCurrent перед обращением к Current.
  Во-вторых, вместо единого создания объекта и подмены в нем InternalRecord, Current теперь создается
  каждый раз при перемещении. Соответственно класс Current теперь не единый, а зависит от текущей записи
  (актуально для гетерогенных картотек). Если картотека пуста, то Current = nil, что также нужно учитывать
  в алгоритмах.

  Вместо свойства EditingRecord теперь

        var EditMode :Logical;

  возвращает True, если в картотеке с inplace-редактированием текущая запись находится в состоянии редактирования.
  Соответственно ссылка на редактируемую запись находится в Current.

## 23.07.2021

<!-- Филатов -->
- В компонент [IBlankForm](ComClasses.IBlankForm "Интерфейс IBlankForm") добавлено новое свойство

        var ReadOnly :Logical;

  Свойство нужно устанавливать, если необходимо открыть форму в режиме "только для чтения". ReadOnly
  автоматически устанавливается, если открывается бланк-редактор удаленной записи или записи, которую
  нельзя редактировать (см. права доступа на классы записей).

  Свойство LockedFlagIsReadOnly объявлено как deprecated и в версии 10.5 будет удалено. Вместо него
  нужно использовать свойство ReadOnly.

## 20.07.2021

<!-- Филатов -->
- В классе [ICardForm](ComClasses.ICardForm "Интерфейс ICardForm") переименованы свойства:

    - GroupClass -> TreeRecordClass
    - EditorGroupClass -> TreeEditorClass

  В 99% случаев для [ICardForm](ComClasses.ICardForm "Интерфейс ICardForm") достаточно указать
  только свойство RecordClass. Свойство EditorClass нужно указывать только, если редактор
  картотеки отличается от редактора по-умолчанию из интерфейса, либо если по каким-то причинам
  в интерфейсе он не задан. Свойство TreeRecordClass имеет смысл указывать только если в дереве
  картотеки должен отображаться класс записи, отличный от класса записи картотеки. Соответственно
  свойство TreeEditorClass аналогично свойству EditorClass, но для класса записи в дереве картотеки.

## 08.07.2021

<!-- Филатов -->
- В компоненте [IForm](ComClasses.Frm.IForm.Default "Интерфейс IForm") реализован метод

        func CurrentRow :Integer;

  Подробности [тут](ComClasses.Frm.IForm.CurrentRow "CurrentRow")

## 30.06.2021

<!-- Адаскин -->
- Удалено свойство DynamicURL объекта [IPicture](ComClasses.IPicture)

## 24.06.2021

<!-- Филатов -->
- В компонент [IRecord](ComClasses.IRecord "Интерфейс IRecord") добавлен новый метод

        proc DoVerify;

  Данный метод вызывается перед сохранением записи до открытия транзакции. В нем имеет смысл
  делать различного рода проверки (валидацию записи). Аналогичный метод есть в компоненте
  [IEditor](ComClasses.IEditor "Интерфейс бланка-редактора") и все основные проверки лучше
  делать там (с позиционированием на некорректное поле). В [IRecord](ComClasses.IRecord "Интерфейс IRecord")
  нужно делать проверки, без которых база может перейти в невалидное состояние.

## 21.06.2021

<!-- Адаскин -->
- В компонент [IRepControl](ComClasses.Rep.IRepControl "Интерфейс IRepControl") добавлено свойство
        Indicators :String;
  В нём перечислены показатели, на которые параметр накладывает ограничение. Формат:
        "Показатель1,Показатель2"
  По умолчанию свойство пусто и ограничение накладывается на отчёт в целом (т.е. на все показатели).

## 18.06.2021

<!-- Адаскин -->
- Хранение crf-отчёта в базе переведено на UTF-8

## 16.06.2021

<!-- Адаскин -->
- В компонент [IReport](ComClasses.Rep.IReport) добавлено
  свойство задающее сортировку по показателям
        RowOrder :String;
  метод возвращающий формат остатков/оборотов
        func GetSumFormat(aSumKind :Report.SumKinds) :Report.SumFormats;
  Метод GetOrder объявлен deprecated и в будущем будет удалён.

## 03.06.2021

<!-- Адаскин -->
- В компонент [IRepControl](ComClasses.Rep.IRepControl "Интерфейс IRepControl") добавлено свойство
        CanSave :Logical;
  Является отрицанием свойства DoNotSave.

## 27.05.2021

<!-- Филатов -->
- В компонент [ICardForm](ComClasses.ICardForm "Интерфейс ICardForm") добавлен новый метод

        proc ApplyUserState;

  Данный метод нужно вызывать для явной установки пользовательских настроек. Например, если
  нужно перекрыть пользовательские настройки явным значением.

  Пример. Устанавливаем сортировку по полю Code вне зависимости от сохраненной
  пользовательской сортировки:

        proc НастроитьКартотеку(Sender :IEdit; aIndex :Integer; aCardForm :ICardForm);
          aCardForm.ApplyUserState;
          aCardForm.CardFile.SortOrder = 'Code';
        end;

## 26.05.2021

<!-- Филатов -->
- Добавлен новый контрол [ITable](ComClasses.Ctrl.ITable.Default "Интерфейс ITable"), реализующий возможности периодической секции шаблона.
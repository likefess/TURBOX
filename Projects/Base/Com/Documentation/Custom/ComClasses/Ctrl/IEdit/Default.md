---
Title: Компонент IEdit
Link: .Ctrl.IEdit
---

[IComponent](topic:Com.Custom.ComClasses.IComponent.Default) :
[IContainer](topic:Com.Custom.ComClasses.IContainer.Default) :
[Ctrl.IControl](topic:Com.Custom.ComClasses.Ctrl.IControl.Default) :
[Ctrl.IControlCell](topic:Com.Custom.ComClasses.Ctrl.IControlCell.Default)

# Ctrl.IEdit

Класс *Ctrl.IEdit* предназначен для работы с полями ввода.

Поле ввода - это элемент управления, который позволяет выводить и изменять значения
переменных через форму.

Наследует все свойства и методы родительского класса Ctrl.IControlCell.

Непосредственно в классе *Ctrl.IEdit* определены следующие свойства класса:
* [Функция CreateEx](CreateEx)

и свойства объекта:
* [Поле Required](Required)
* [Поле AutoLock](AutoLock)
* [Поле HasInnerCaption](HasInnerCaption)
* [Поле Field](Field)
* [Поле Contents](Contents)
* [Поле ValueType](ValueType)
* [Поле CellFormat](CellFormat)
* [Поле FieldFormat](FieldFormat)
* [Поле FormatOfDate](FormatOfDate)
* [Поле UTCFormat](UTCFormat)
* [Поле LookupField](LookupField)
* [Поле LookupFilter](LookupFilter)
* [Поле LookupOrder](LookupOrder)
* [Поле AutoLookup](AutoLookup)
* [Поле CardFileClass](CardFileClass)
* [Поле HasButton](HasButton)
* [Поле ButtonStyle](ButtonStyle)
* [Поле ShortList](ShortList)
* [Поле ListAsString](ListAsString)
* [Поле AutocompleteMode](AutocompleteMode)
* [Поле AutocompleteLimit](AutocompleteLimit)
* [Поле UseMacro](UseMacro)
* [Поле CanSummary](CanSummary)
* [Поле CanDesignate](CanDesignate)
<!--* [Поле Spellcheck](Spellcheck) web -->
<!--* [Поле AutocompleteOn](AutocompleteOn) web -->
* [Событие OnVerify](OnVerify)
* [Событие OnChange](OnChange)
* [Событие OnAutocomplete](OnAutocomplete)
* [Событие OnOpenCardForm](OnOpenCardForm)
* [Событие SetRecordParams](SetRecordParams)
* [Событие OnCopy](OnCopy)
* [Событие OnPaste](OnPaste)
* [Событие OnGetLookupFilter](OnGetLookupFilter)
* [Поле RecordClass](RecordClass)
* [Событие OnCreateRecord](OnCreateRecord)
* [Поле ShowHierarchy](ShowHierarchy)
* [Поле CaptionWidth](CaptionWidth)
* [Поле List](List)
* [Поле OneValueChoice](OneValueChoice)
* [Поле ActionOnType](ActionOnType)
* [Событие OnLookup](OnLookup)
* [Событие OnEnter](OnEnter)
* [Поле Label](Label)
* [Поле FOwnLabel](FOwnLabel)
* [Поле JumpButton](JumpButton)
* [Поле ContentsSuffix](ContentsSuffix)
* [Функция Autocomplete](Autocomplete)
<!--* [Функция webAutocomplete](webAutocomplete) web -->
* [Функция SelectFromCardfile](SelectFromCardfile)
* [Функция DoType](DoType)
* [Функция DoLookup](DoLookup)
* [Процедура FillList](FillList)
* [Процедура FillEnum](FillEnum)
* [Процедура StringToList](StringToList)
* [Функция ListToString](ListToString)
* [Процедура SetValue](SetValue)
* [Функция hasFormat](hasFormat)
* [Функция formattedValue](formattedValue)
* [Функция GetAutocompleteList](GetAutocompleteList)
* [Функция AutocompleteValue](AutocompleteValue)
* [Функция GetEditFilter](GetEditFilter)
* [Процедура AddOnVerify](AddOnVerify)
* [Процедура AddOnVerifyEx](AddOnVerifyEx)
* [Процедура AddOnInput](AddOnInput)
* [Процедура AddOnInputEx](AddOnInputEx)
* [Функция GetDateFormat](GetDateFormat)
* [Функция ConvertValueForJSON](ConvertValueForJSON)
* [Процедура AutocompleteRecords](AutocompleteRecords)
* [Функция GetLookupFieldType](GetLookupFieldType)
* [Процедура OnCloseCardFile](OnCloseCardFile)
* [Процедура OnChooseCardFile](OnChooseCardFile)
<!--* [Функция CreateCardFile](CreateCardFile) вынесен в public в расширении -->

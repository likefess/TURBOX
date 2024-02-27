---
Link: .Job.@OnExecute
---

[Job](Default)

# Событие OnExecute
---

### Описание

    OnExecute :Function;

### Назначение

Метод исполнения задания.

### Допустимые форматы события

Процедуры

    proc OnExecute1(aJob :Com.Job);
    proc OnExecute2(aJob :Com.Job; aParam :Variant);
    proc OnExecute3(aParam :Variant);

Функции

    func OnExecute4(aJob :Com.Job):Variant;
    func OnExecute5(aJob :Com.Job; aParam :Variant):Variant;
    func OnExecute6(aParam :Variant):Variant;

, где

- **aJob** - ссылка на объект выполняемого задания;

- **aParam** - передаваемые параметры произвольного типа.
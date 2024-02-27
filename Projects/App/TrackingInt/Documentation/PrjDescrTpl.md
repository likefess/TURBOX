
# Описание продукта "@ProjectInfo.Title@" вер. ProjectInfo.Version
---

## Аннотация
Настоящий документ содержит описание программного продукта (далее «программа»)
«@ProjectInfo.Title@».

Сведения, содержащиеся в настоящем документе, отражают текущую позицию ООО 
«КОНСИСТ» по обсуждаемым вопросам на момент публикации. Так как ООО «КОНСИСТ» 
должно реагировать на изменяющиеся условия рынка, этот документ не может считаться 
обязательством компании и может претерпеть изменения. Это означает, что ООО 
«КОНСИСТ» не может гарантировать точность любой информации, представленной в этом 
документе, после даты его публикации. Настоящий документ не является описанием 
товаров и услуг, предлагаемых сейчас для приобретения. Этот документ должен 
использоваться только в информационных целях. 
ООО «КОНСИСТ» НЕ ПРЕДОСТАВЛЯЕТ НИКАКИХ ГАРАНТИЙ, ЯВНЫХ, ПОДРАЗУМЕВАЕМЫХ 
ИЛИ ПРЕДУСМОТРЕННЫХ ЗАКОНОМ, ОТНОСИТЕЛЬНО СВЕДЕНИЙ, СОДЕРЖАЩИХСЯ В ЭТОМ 
ДОКУМЕНТЕ. 

© ООО «КОНСИСТ», @Year(Today)@ г. Все права защищены

## 1. Общие сведения
### 1.1. Обозначение и наименование программы
Полное наименование программы – «@ProjectInfo.Title@».
Версия - «@ProjectInfo.Version@»
Имя проекта Турбо – «@ProjectInfo.Name@»

### 1.2. Программное обеспечение, необходимое для функционирования программы
Программа функционирует под управлением платформы «Турбо». Для хранения данных 
используется одна из поддерживаемых платформой «Турбо» СУБД. 
Проект «@ProjectInfo.Name@» использует подпроекты: «@ProjectInfo.SubProjects@».

### 1.3. Языки программирования, на которых написана программа
- Турбо скрипт;
- Java script;
- HTML/CSS.

## 2. Функциональное назначение
### 2.1. Классы решаемых задач
«@ProjectInfo.Comment@».

## 3. Описание классов

### 3.1 Основные классы работы с данными системы

<!--{ RecClassAutoDoc -->
#### 3.1.@NN@ @ClassName@ - @ClassInfo.Description@
##### Общие сведения

Назначение:                     @ClassInfo.help@

Класс записи:                   @RecordClass.FullClassName@

Класс картотеки:                @CardformClass.FullClassName@

Класс формы редактирования:     @EditorClass.FullClassName@

##### Свойства и методы класса
<!--{ MemberDescriptionTemplate -->
- @MemberInfo.Name@ - @MemberInfo.help@;
```
@MemberInfo.Signature@
```
<!-- MemberDescriptionTemplate }-->

##### Свойства и методы экземпляра класса
<!--{ MemberDescriptionTemplate -->
- @MemberInfo.Name@ - @MemberInfo.help@;
```
@MemberInfo.Signature@
```
<!-- MemberDescriptionTemplate }-->
<!-- RecClassAutoDoc }-->

### 3.2. Визуальные формы

### 3.3. Прочие программные классы
<!--{ ClassDescriptionTemplate -->
#### 3.3.@NN@ @ClassName@ - @ClassInfo.Description@
##### Общие сведения
Назначение: @ClassInfo.help@
##### Свойства и методы класса
<!--{ MemberDescriptionTemplate -->
- @MemberInfo.Name@ - @MemberInfo.help@;
```
@MemberInfo.Signature@
```
<!-- MemberDescriptionTemplate }-->

##### Свойства и методы экземпляра класса
<!--{ MemberDescriptionTemplate -->
- @MemberInfo.Name@ - @MemberInfo.help@;
```
@MemberInfo.Signature@
```
<!-- MemberDescriptionTemplate }-->
<!-- ClassDescriptionTemplate }-->
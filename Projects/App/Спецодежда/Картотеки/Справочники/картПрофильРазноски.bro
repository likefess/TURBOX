﻿[Options]
Version=7
Query=.Справочники.СОПрофильРазноски
HierarchicalField=Name
CanHGroupModify=0
OnCreateRecord=картотека_ПриСозданииЗаписи
OnModify=картотека_ПриИзменении
ShowCount=0
CanCopy=1
HelpContext=.УиФ.Спецодежда.Основные данные.Профиль разноски СО и СОсн
ColumnCount=49
Column:0=Код
Column:1=Имя
Column:2=Предприятие.Name
Column:3=СрокСлужбыОт
Column:4=СрокСлужбыДо
Column:5=СтоимостьОт
Column:6=СтоимостьДо
Column:7=ВидОдежды
Column:8=Бух_СчетВводаВЭкспл
Column:9=Бух_КоррСчетВводаВЭкспл
Column:10=Бух_МетодАмортизации
Column:11=Бух_СчетАмортизации
Column:12=Бух_КоррСчетАмортизации
Column:13=Бух_СчетВыбытияАморт
Column:14=Бух_КоррСчетВыбытияАморт
Column:15=Бух_СчетВыбытияСтоим
Column:16=Бух_КоррСчетВыбытияСтоим
Column:17=Бух_СчетСписанияСтоим
Column:18=Бух_КоррСчетСписанияСтоим
Column:19=Бух_СчетСписанияАморт
Column:20=Бух_КоррСчетСписанияАморт
Column:21=Бух_СписыватьПриВыдаче
Column:22=Заб_СчетВводаВЭкспл
Column:23=Заб_КоррСчетВводаВЭкспл
Column:24=Заб_МетодАмортизации
Column:25=Заб_СчетАмортизации
Column:26=Заб_КоррСчетАмортизации
Column:27=Заб_СчетВыбытияАморт
Column:28=Заб_КоррСчетВыбытияАморт
Column:29=Заб_СчетВыбытияСтоим
Column:30=Заб_КоррСчетВыбытияСтоим
Column:31=Заб_СчетСписанияАморт
Column:32=Заб_КоррСчетСписанияАморт
Column:33=Заб_СчетСписанияСтоим
Column:34=Заб_КоррСчетСписанияСтоим
Column:35=Нал_СчетВводаВЭкспл
Column:36=Нал_КоррСчетВводаВЭкспл
Column:37=Нал_МетодАмортизации
Column:38=Нал_СчетАмортизации
Column:39=Нал_КоррСчетАмортизации
Column:40=Нал_СчетВыбытияАморт
Column:41=Нал_КоррСчетВыбытияАморт
Column:42=Нал_СчетВыбытияСтоим
Column:43=Нал_КоррСчетВыбытияСтоим
Column:44=Нал_СчетСписанияАморт
Column:45=Нал_КоррСчетСписанияАморт
Column:46=Нал_СписыватьПриВыдаче
Column:47=Нал_СчетСписанияСтоим
Column:48=Нал_КоррСчетСписанияСтоим
TreeVisible=1
TreeWidth=82
SubTableWidth=100
SubTableHeight=100

[.Column.Код]
Caption=Код
Width=67
ColumnFormat=1

[.Column.Имя]
Caption=Наименование
Width=105
ColumnFormat=1

[.Column.Предприятие.Name]
Caption=Предприятие
Width=100

[.Column.СрокСлужбыОт]
Caption=Срок службы от
Width=100
Alignment=1

[.Column.СрокСлужбыДо]
Caption=Срок службы до
Width=100
Alignment=1

[.Column.СтоимостьОт]
Caption=Стоимость от
Width=100
Alignment=1

[.Column.СтоимостьДо]
Caption=Стоимость до
Width=100
Alignment=1

[.Column.ВидОдежды]
Caption=Тип
Width=100
Alignment=1
ColumnFormat=5
EnumList=" \x0D\x0AСпецодежда\x0D\x0AФорменное обмундирование\x0D\x0AСпецоснастка"

[.Column.Бух_СчетВводаВЭкспл]
Caption=Бух. Ввод в экспл. Счет учета
Width=100

[.Column.Бух_КоррСчетВводаВЭкспл]
Caption=Бух. Ввод в эксп. Корр.счет
Width=133

[.Column.Бух_МетодАмортизации]
Caption=Бух. Метод амортизации
Width=134
Alignment=1

[.Column.Бух_СчетАмортизации]
Caption=Бух. Аморт.Счет учета
Width=133

[.Column.Бух_КоррСчетАмортизации]
Caption=Бух. Аморт. Корр.счет
Width=137

[.Column.Бух_СчетВыбытияАморт]
Caption=Бух. Выбытие аморт. Счет учета
Width=189

[.Column.Бух_КоррСчетВыбытияАморт]
Caption=Бух.Выбытие аморт. Корр.счет
Width=172

[.Column.Бух_СчетВыбытияСтоим]
Caption=Бух. Выбытие стоимости  Счет учета
Width=122

[.Column.Бух_КоррСчетВыбытияСтоим]
Caption=Бух.Выбытие стоимости Корр.счет
Width=100

[.Column.Бух_СчетСписанияСтоим]
Caption=Бух.Списание стоимости Счет учета
Width=206

[.Column.Бух_КоррСчетСписанияСтоим]
Caption=Бух.Списание стоимости Корр.счет
Width=199

[.Column.Бух_СчетСписанияАморт]
Caption=Бух. Списание аморт.Счет учета
Width=212

[.Column.Бух_КоррСчетСписанияАморт]
Caption=Бух. Списание аморт.Корр.счет
Width=189

[.Column.Бух_СписыватьПриВыдаче]
Caption=Бух. Списывать в момент выдачи
Width=100
Alignment=2
ColumnFormat=4
Format=+

[.Column.Заб_СчетВводаВЭкспл]
Caption=Заб. Ввод в эксплуатацию Счет учета
Width=212

[.Column.Заб_КоррСчетВводаВЭкспл]
Caption=Заб. Ввод в эксплуатацию Корр.счет
Width=204

[.Column.Заб_МетодАмортизации]
Caption=Заб. Метод амортизации
Width=116
Alignment=1

[.Column.Заб_СчетАмортизации]
Caption=Заб. Амортизация Счет учета
Width=168

[.Column.Заб_КоррСчетАмортизации]
Caption=Заб.Амортизации Корр.счет
Width=160

[.Column.Заб_СчетВыбытияАморт]
Caption=Заб.Выбытие аморт. Счет учета
Width=179

[.Column.Заб_КоррСчетВыбытияАморт]
Caption=Заб.Выбытие аморт. Корр.счет
Width=173

[.Column.Заб_СчетВыбытияСтоим]
Caption=Заб. Выбытие стоимости Счет учета
Width=198

[.Column.Заб_КоррСчетВыбытияСтоим]
Caption=Заб. Выбытие стоимости Корр.счет
Width=199

[.Column.Заб_СчетСписанияАморт]
Caption=Заб. Списание амортизации Счет учета
Width=219

[.Column.Заб_КоррСчетСписанияАморт]
Caption=Заб. Списание амортизации Корр.счет
Width=103

[.Column.Заб_СчетСписанияСтоим]
Caption=Заб.Списание стоимости Счет учета
Width=95

[.Column.Заб_КоррСчетСписанияСтоим]
Caption=Заб.Списание стоимости Корр.счет
Width=70

[.Column.Нал_СчетВводаВЭкспл]
Caption=Нал. Ввод в эксплуатацию Счет учета
Width=95

[.Column.Нал_КоррСчетВводаВЭкспл]
Caption=Нал. Ввод в эксплуатацию Корр.счет
Width=92

[.Column.Нал_МетодАмортизации]
Caption=Нал. Метод амортизации
Width=109
Alignment=1

[.Column.Нал_СчетАмортизации]
Caption=Нал. Амортизация Счет учета
Width=110

[.Column.Нал_КоррСчетАмортизации]
Caption=Нал.Амортизация Корр.счет
Width=86

[.Column.Нал_СчетВыбытияАморт]
Caption=Нал. Выбытие амортизации Счет учета
Width=111

[.Column.Нал_КоррСчетВыбытияАморт]
Caption=Нал. Выбытие амортизации Корр.счет
Width=123

[.Column.Нал_СчетВыбытияСтоим]
Caption=Нал. Выбытие стоимости Счет учета
Width=115

[.Column.Нал_КоррСчетВыбытияСтоим]
Caption=Нал.Выбытие стоимости Корр.счет
Width=180

[.Column.Нал_СчетСписанияАморт]
Caption=Нал. Списание амортизации Счет учета
Width=104

[.Column.Нал_КоррСчетСписанияАморт]
Caption=Нал. Списание амортизации Корр.счет
Width=91

[.Column.Нал_СписыватьПриВыдаче]
Caption=Нал. Списывать в момент выдачи
Width=86
Alignment=2
ColumnFormat=4
Format=+

[.Column.Нал_СчетСписанияСтоим]
Caption=Нал. Списание стоимости Счет учета
Width=100

[.Column.Нал_КоррСчетСписанияСтоим]
Caption=Нал. Списание стоимости Корр.счет
Width=114

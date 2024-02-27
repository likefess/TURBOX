#Resource(Ресурс)


Запись Resource предназначена для обеспечения работы в системе со всеми видами ресурсов, которые используются

для целей бухгалтерского учета, т.е. все объекты материального, нематериального, трудового, финансового и иного

характера, которые на основании подтвержденных прав задействованы в каком-либо бизнесе и используются для

достижения его цели.

*Интерфейс записи:* Rec.Data.Resource, Rec.Data.Resource_Certificates (подтаблица сертификаты)
*Картотека:* Tab.Data.Resources
*Бланк:* Frm.Data.Resource
*Является аналитическим справочником:* RefTables.refResource.

*Не является источником проводок.*

*Вызывается командой:* Cmd_Resources, панель Menu.Panels.MenuPanel_MasterData

*Клиентское расширение интерфейса - нет.*


###Поля записи:

####Унаследованные из базового класса Com.Base.CodeName
      field Code       synonym Код         :TCode;    уникальный идентификатор, значение которого может задавать сам пользователь
      field Dative     synonym Дательный   :TName;    название в дательном падеже (кому? чему?)
      field Accusative synonym Винительный :TName;    название в винительном падеже (кого виню? что виню?)

####Унаследованные из базового класса Bas.Base.BasObject

  **Структура, поддерживающая работу с дополнительными полями.**

    struct ExtraFields synonym ДополнительныеПоля array integer ;
      field Name      synonym ИмяПоля            :Com.Base.TIdent;
      field AsNumeric synonym ЗначениеЧисло      :Numeric;
      field AsString  synonym ЗначениеСтрока     :String(MaxStr);
      field AsInteger synonym ЗначениеЦелое      :Integer;
      field AsDate    synonym ЗначениеДата       :Date;
      field AsLogical synonym ЗначениеЛогическое :Logical;
      field AsRecord  synonym ЗначениеСсылка     :inherited Record;
    end;


  **Структура, поддерживающая работу с историческими полями, т.е полями, значение которых зависит от даты (времени).**

    struct HistoricalData synonym ИсторическиеДанные array integer ;
      field Name      synonym ИмяПоля            :Com.Base.TIdent;
      field Time      synonym BeforeTime, ДатаМодификации    :Date;
      field AsNumeric synonym ЗначениеЧисло      :Numeric;
      field AsString  synonym ЗначениеСтрока     :String(MaxStr);
      field AsInteger synonym ЗначениеЦелое      :Integer;
      field AsDate    synonym ЗначениеДата       :Date;
      field AsLogical synonym ЗначениеЛогическое :Logical;
      field AsRecord  synonym ЗначениеСсылка     :inherited Record;
      indexed by AsRecord;
    end;

  **Подтаблица вложений. Каждое вложение может состоять из нескольких вложенных файлов.**

    struct Attachments array integer;
      field Attachment :Com.Archive.Attachment;
    end;


  ####Поля, добавляемые в записи Rec.Data.Resource:

    field Name  synonym Имя :Com.Base.TResFullName;  В этом классе перекрывается, для того чтобы увеличить длину поля.
                                                     В стандарте она TRecordName   = String(255), в этом классе записи длина
                                                     поля Name нестандартная, TResFullName  = String(MaxIndexedStr),
                                                     т.е. максимальное значение для типа String в зависимости от базы данных
    field GroupPath         :String(MaxIndexedStr);  поддержка иерархии, полный путь от корневой группы (по DocID)
    field IsJustAGroup synonym ПростаяГруппа :Logical; элемент является просто группой, независимо от его типа
    field DenyChoice   synonym ЗапрещенВыбор :Logical; запрещает выбор данной записи

    field SKU         synonym Артикул       :Com.Base.TCode; Алфавитно-цифровой код (шифр)
    field FullResName synonym ПолнИмя       :Com.Base.TResFullName; Полное название ресурса
    field AltResName  synonym АльтИмя       :Com.Base.TName; Альтернативное название ресурса
    field ExtComment  synonym ТекстКомментария :Text; Расширенный комментарий

    field ResType     synonym ТипРесурса    :Integer; Ресурс может быть функционально чем угодно (ТМЦ, услуга, статья деятельности и т.п.),
                                                      каждый тип ресурса имеет свой целочисленный идентификатор (3 цифры).

    Следующие поля представляют собой логические флаги для определения типа ресурса. (Цифра это и есть ResType)
    Типы ресурсов, которые делятся на 100 - это основные группы, на 10 подгруппы этих групп.
    Если требуется добавить новый тип ресурса, то соответственно надо добавить и флаг.

    field Typ100 synonym Тип100_ТМЦ                 :Logical;
    field Typ110 synonym Тип110_Имущество           :Logical;
    field Typ111 synonym Тип111_Автотранспорт       :Logical;
    field Typ120 synonym Тип120_Товар               :Logical;
    field Typ125 synonym Тип125_ДенежныеДок         :Logical;
    field Typ130 synonym Тип130_Материал            :Logical;
    field Typ131 synonym Тип131_ГСМ                 :Logical;
    field Typ132 synonym Тип132_Шины                :Logical;
    field Typ133 synonym Тип133_Автозапчасти        :Logical;
    field Typ140 synonym Тип140_Полуфабрикат        :Logical;
    field Typ150 synonym Тип150_Изделие             :Logical;
    field Typ160 synonym Тип160_ХозТовар            :Logical;
    field Typ161 synonym Тип161_Спецодежда          :Logical;
    field Typ170 synonym Тип170_РеклМатериал        :Logical;
    field Typ180 synonym Тип180_Тара                :Logical;
    field Typ190 synonym Тип190_Оборудование        :Logical;
    field Typ200 synonym Тип200_Услуга              :Logical;
    field Typ210 synonym Тип210_ТаможенныеПлатежи   :Logical;
    field Typ300 synonym Тип300_ФинИнструмент       :Logical;
    field Typ310 synonym Тип310_Деньги              :Logical;
    field Typ320 synonym Тип320_Вексель             :Logical;
    field Typ330 synonym Тип330_Акция               :Logical;
    field Typ340 synonym Тип340_Облигация           :Logical;
    field Typ400 synonym Тип400_Статья              :Logical;
    field Typ410 synonym Тип410_Продажи             :Logical;
    field Typ420 synonym Тип420_Закупки             :Logical;
    field Typ430 synonym Тип430_Производство        :Logical;
    field Typ431 synonym Тип431_Комплектация        :Logical;
    field Typ440 synonym Тип440_Налоги              :Logical;
    field Typ450 synonym Тип450_Зарплата            :Logical;
    field Typ460 synonym Тип460_ФинРасчеты          :Logical;
    field Typ470 synonym Тип470_Капвложения         :Logical;
    field Typ471 synonym Тип471_Двигатели           :Logical;
    field Тип480 synonym Тип480_ПрибылиУбытки       :Logical;
    field Тип481 synonym Тип481_ПрибылиУбыткиКолич  :Logical;
    field Typ500 synonym Тип500_Труд                :Logical;
    field Typ600 synonym Тип600_РесурсОборуд        :Logical;
    field Typ700 synonym Тип700_Недвижим            :Logical;
    field Typ800 synonym Тип800_НА                  :Logical;

    Ставки налогов

    field VATRate   synonym НДС :Numeric period Date; Периодическое поле
    field СтавкаНДС synonym VAT :Biz.Ref.VAT period Date; Периодическое поле

    В системе на данный момент так исторически сложилось, что ставка НДС поддерживается двумя полями: VATRate числовое поле и
    поле СтавкаНДС - поле, которое является ссылкой на справочник Biz.Ref.VAT. На данный момент основным полем, которое используется
    для ввода ставки НДС является поле СтавкаНДС. Поле VATRate программно синхронизируется с полем СтавкаНДС
    процедурой в Rec.Data.Resource  proc SynchronizeVatRate;  -- Синхронизирует структуры VAT и VATrate (Ставки НДС)

    Сертификаты – поля используемые для ввода данных о сертификатах на ресурс, сейчас в системе возможно использовать для этих целей подтаблицу вложений.
    field Certificates    synonym Сертификаты :Ref.Certificate array Integer; Список Сертификатов
    field FirstCertNumber synonym НомерПервогоСертификата :String; Номер первого сертификата

    field MainUnit     synonym ОснЕдИзм :Ref.UnitOrCurrency; Основная единица измерения для ресурса

    field ReorderLevel synonym МинЗапас :Numeric; Минимальный запас который должен хранится на складе,
                                                  в проекте BizRus добавлена подтаблица MinStock, там есть возможность
                                                  привязать минимальный запас к предприятию

    field Country synonym Страна :Ref.CountryOrRegion; Страна-производитель данного ресурса
    field Brand synonym Брэнд,Бренд :Ref.Brand; Торговая марка, под которой выпускается ресурс

    field ResColor synonym Цвет :Ref.Color; Цвет

    field ResSize synonym Размер :Ref.Size; Размер

    Поля в которых указываются размеры и вес ресурса.

    field NetWeight       synonym ВесНетто    :Numeric; Вес нетто
    field NetWeightUnit   synonym ЕдИзмВесНетто :Ref.UnitOrCurrency; Единица измерения веса нетто, может отличаться от основной единицы измерения
    field GrossWeight     synonym ВесБрутто   :Numeric; Вес брутто
    field GrossWeightUnit synonym ЕдИзмВесБрутто:Ref.UnitOrCurrency; Единица измерения веса брутто

    field ResLength       synonym Длина       :Numeric; Длина
    field LengthUnit      synonym ЕдИзмДлина  :Ref.UnitOrCurrency; Единица измерения длины

    field HasWidth        synonym ЕстьШирина  :Logical; У данного ресурса в размерах указана ширина
    field ResWidth        synonym Ширина      :Numeric; Ширина
    field WidthUnit       synonym ЕдИзмШирина :Ref.UnitOrCurrency; Единица измерения ширины

    field HasHeight       synonym ЕстьВысота  :Logical; У данного ресурса в размерах есть высота
    field ResHeight       synonym Высота      :Numeric; Высота
    field HeightUnit      synonym ЕдИзмВысота :Ref.UnitOrCurrency; Единица измерения высоты

    field NetVolume       synonym ОбъемНетто  :Numeric; Объем нетто
    field NetVolumeUnit   synonym ЕдИзмОбъемНетто :Ref.UnitOrCurrency; Единица объема нетто

    field GrossVolume     synonym ОбъемБрутто :Numeric; Объем брутто
    field GrossVolumeUnit synonym ЕдИзмОбъемБрутто :Ref.UnitOrCurrency; Единица объема брутто

    Поля, предназначенные для работы с тарой
    field QuantityInPacking synonym КоличествоВФасовке :Numeric; Кол-во в фасовке
    field QuantityPacInPac  synonym ФасовокВУпаковке :Numeric; Кол-во фасовок в упаковке

    Поле добавлено для проекта Денежные документы
    field ВидДенежногоДокумента synonym MoneyDocKind :Ref.MoneyDocKind; --  Вид денежного документа

  ####Дополнительно

  Внешний ключ записи – поле Code (из Com.Base.CodeName).

  Для работы с записью имеются индекс по полю Code (из Com.Base.CodeName) и

  индексы по набору полей "IsGroup, Name",  "IsGroup, FullResName";

  У записи есть пользовательское ограничение (constraint) CodeNotNil, т.е документ

  с незаполненным полем Code в системе не может быть сохранен.


  ####Публичные функции класса в интерфейсе записи (класс Rec.Data.Resource)
    func getTypes( aCond :func(t:integer):bool ) :string[]; Возвращает список номеров типов ресурсов, удовлетворяющих условию aCond,
                                                            в формате для перечислимого типа

    func KeyByType( aType :integer ) :string; Возвращает ключ сообщения (названия) по номеру типа ресурса

    func GetAllTypes :string[]; Возвращает список всех типов ресурсов

    func GetAllGroups :string[]; Возвращает список номеров групп (типы ресурсов, которые делятся на 100), основные типы ресурсов

###Аналитический справочник refResource synonym спрРесурс

включает в себя ключевые аналитики, в разрезе которых возможно построение отчетов и отбор проводок в системе.
Это поля:
    Code
    Description synonym Наименование
    AltResName  synonym АльтернативноеНаименование
    MainUnit    synonym ОсновнаяЕдиницаИзмерения
    ResType     synonym ТипРесурса
    NetWeight   synonym ВесНетто
    GrossWeight synonym ВесБрутто
    NetVolume   synonym ОбъемНетто
    Brand       synonym Брэнд

Запись ресурс и аналитический справочник refResource расширяются в надпроектах.


###Проект BizRus

Добавляются поля специфичные для российского пользователя.

    field КодЕАЭС :Com.Base.TCode; Код (ЕАЭС)
    field КодТНВЭД :Классификаторы.ТНВЭД; КодТН ВЭД, заполняется из классификатора

    field БухСчет :Com.Base.TAccount; Счет, по которому проходят бухгалтерские проводки по ресурсу

    field Стоимость :Numeric period Date; Стоимость ресурса, периодическое поле, т.е. поддерживается изменение по датам
    field ВалютаСтоимости :Biz.Ref.UnitOrCurrency; Валюта, в которой указывается стоимость ресурса

    field Акциз :Numeric period Date; Акциз, периодическое поле, т.е. поддерживается изменение по датам
    field АкцизСуммой :Logical; Cтавка акциза может быть указана фиксированной суммой в определенной валюте или процентом
    field ВалютаАкциза :Biz.Ref.UnitOrCurrency; ВалютаАкциза
    field ЕдИзмАкциза :Biz.Ref.UnitOrCurrency; Единица, за которую указан акциз (штука, коробка, пачка и т.п.)

    field AnalogType synonym ТипАналога :Integer; Ресурс может быть основным, либо у него может быть аналог, в если он есть
                                                         в этом поле указывается его тип. Значения: 0 - «Не используется»,
                                                         1 - «Основной», 2 - «Аналог», 3 - «Универсальный».

    struct MinStock synonym МинимальныйЗапас array Integer ; -- Минимальный запас, который поддерживается на складе
      field Предприятие :Bas.Data.Entity; Предприятие, для которого есть запас
      field МинЗапас    :Numeric; минимальное количество в запасе
    end;

    структура в которой перечисляются аналоги ресурса
    struct AnalogPriority synonym ПриоритетАналога  array Integer;
      field Analog         synonym Аналог           :Biz.Data.Resource; Аналог
      field AnalogPriority synonym ПриоритетАналога :BizRus.Ref.AnalogPriority; Ссылка на справочник Приоритет аналога
      field Coefficient    synonym Коэффициент      :Numeric; Коэффициент
    end;







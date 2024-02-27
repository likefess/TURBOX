#EndPoint

***    ---------------------------Версия 1.00------------------------***

Интерфейс IEndPoint является наследником интерфейса Service.InterfaceBase
(Базовый класс для интерфейсов IEndPointType) и расширяет его возможности для
работы с различными точками подключений.

Доступны следующие типы форматов точек подключения (Uni-классы):
* Клиент-банк
* Таблица CSV
* Подключение к ИБ Турбо (загрузка проводок)
* Данные XML
* TB форма
* TB запись

Все классы имеют общие особенности для унификации их использования, включая перекрытые функции.

* Процедура AddComponents добавляет в класс необходимую информацию из формы "Соответствие полей".
        proc AddComponents(aMapping: Rec.Mapping);


* Процедура GetStructure заполняет указанную в ней структуру данных aStruct (Список Структуры объектов)
списком полей и таблиц выбранного объекта.

        proc GetStructure(aStruct: Rec.ObjectStruct);








Для полей применимы следующие атрибуты:
* Required

        #Attr Required=True;

Атрибут показывает, является ли данное поле обязательным
 при создании точки подключения.

* FillListFunction

        #Attr FillListFunction='FillProject';
В данном атрибуте прописывается функция, возвращающая список для заполнения
значений для данного параметра в таблице. Например,

        func FillProject: String[];
          Result = ['One', 'Two', 'Four'];
        end;

* Help
        #Help `Selected record in Turbo`;

Описание для параметра, отображаемое в поле "Описание" при создании точки подключения.

* OnInputFunction

        #Attr OnInputFunction='OnInputSomeValue';
В данном атрибуте прописывается функция, отвечающая за действия при
вводе/изменении значения параметра в таблице. Например,

        func OnInputSomeValue(aParamValue: String): Variant;
          Result = SomeFunc(aParamValue);
          Param1 = nil;
          Param2 = 1;
        end;




 * Класс ILineProcessor - является наследником интерфейса IProcessor и служит для обработки данных
 с использованием последовательного перебора строк данных в источнике (последовательной линейной структурой, например,
  CSV или формат TXT для iBank-клиента).


 * Класс IRecursiveProcessor - наследник интерфейса IProcessor для обработки иерархических структур данных, например, XML

В основе использования этих классов лежат две функции:
* Load

        proc Load(ICurs: ComData.ICursor; RecClass: Class; aMapping: Rec.Mapping; UpdateData: Integer; aRecSet: Rec.Setting);
* UnLoad
        proc UnLoad(ICurs: ComData.ICursor; RecClass: Class; aRecSet: Rec.Setting);

Где: `ICurs` - потомок класса ComData.ICursor
`RecClass` - класс обрабатываемого документа
`aRecSet` -  экземпляр класса [Настройки](Topic:Integration.Интеграция.Справочники.Настройка)  Rec.Setting;


На основе имеющихся классов процессоров можно создавать новые, ---под требования.
*указать про классы в ComData?
*API comExt?
*типы точек?
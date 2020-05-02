# language: ru
# encoding: utf-8
#parent uf:
@UF10_Запуск_VA
#parent ua:
@UA35_запускать_интерактивно

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Открытие VA для записи автодоков.
 


Сценарий: Открытие VA для записи автодоков как клиент тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗаписьАвтодоков/ДляЗаписиАвтодоков01"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И в поле с именем 'ТаймаутДляАсинхронныхШагов' я ввожу текст '80'
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ДелатьЛогВыполненияСценариевВЖР'
	
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И пауза 2
	И я нажимаю на кнопку с именем 'КаталогиСкриптовSikuliXПоУмолчанию'

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	//И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	И я перехожу к закладке "Служебная"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	И я перехожу к закладке "Запуск сценариев"
	
	Тогда таблица "ДеревоТестов" содержит строки
		| 'Наименование'                                                                                                            | 'Статус'  |
		| 'ДляЗаписиАвтодоков01.feature'                                                                                            | ''        |
		| 'ДляЗаписиАвтодоков01'                                                                                                    | ''        |
		| 'ДляЗаписиАвтодоков01'                                                                                                    | 'Success' |
		| 'Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации'                                             | ''        |
		| 'И я устанавливаю текущему сеансу заголовок приложения "Управляющий сеанс"'                                               | 'Success' |
		| 'И я запоминаю строку "ДопПараметр" в переменную "ЗначениеПараметра"'                                                     | 'Success' |
		| 'Если \'$ЗначениеПараметра$ = "TestManager"\' Тогда'                                                                      | 'Success' |
		| 'Дано Я открыл новый сеанс TestClient как TestManager или подключил уже существующий без загрузки настроек'               | ''        |
		| 'Иначе'                                                                                                                   | ''        |
		| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий без загрузки настроек'                               | 'Success' |
		| 'И Я закрыл все окна клиентского приложения'                                                                              | 'Success' |
		| 'И    Я открываю VanessaAutomation в режиме TestClient'                                                                   | ''        |
		| 'Дано в Константе "ПутьКVanessaAutomation" указан существующий файл'                                                      | 'Success' |
		| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                                             | ''        |
		| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'                                                     | 'Success' |
		| 'И Я закрыл все окна клиентского приложения'                                                                              | 'Success' |
		| 'Когда В панели разделов я выбираю "Основная"'                                                                            | 'Success' |
		| 'И В панели функций я выбираю "Открыть vanessa automation"'                                                               | 'Success' |
		| 'Тогда открылось окно "* Vanessa Automation"'                                                                             | 'Success' |
		| 'И я фиксирую текущую форму'                                                                                              | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаНастройки"'                                                                      | 'Success' |
		| 'И В открытой форме я устанавливаю флаг с заголовком "Проверка работы Vanessa-Automation в режиме test client"'           | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаСлужебная"'                                                                      | 'Success' |
		| 'И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"'  | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаНастройки"'                                                                      | 'Success' |
		| 'И я перехожу к закладке "Настройки клиентов тестирования"'                                                               | 'Success' |
		| 'И в поле \'Таймаут запуска клиента тестирования\' я ввожу текст \'20\''                                                  | 'Success' |
		| 'И В поле с именем "ДиапазонПортовTestclient" я указываю значение реквизита объекта обработки "ДиапазонПортовTestclient"' | 'Success' |
		| 'И я перехожу к закладке с именем "СтраницаСервисОсновные"'                                                               | 'Success' |
		| 'И я отменяю фиксирование формы'                                                                                          | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаСлужебная"'                                                                      | 'Success' |
		| 'И    я снимаю флаг \'Режим самотестирования\''                                                                           | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаНастройки"'                                                                      | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаЗапускТестов"'                                                                   | 'Success' |
		| 'И в поле \'Количество попыток выполнения действия\' я ввожу текст \'2\''                                                 | 'Success' |
		| 'И в поле \'Количество секунд поиска окна\' я ввожу текст \'5\''                                                          | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаСлужебная"'                                                                      | 'Success' |
		| 'И я перехожу к закладке "Выполнить код"'                                                                                 | 'Success' |
		| 'И в поле \'Произвольный код\' я ввожу текст'                                                                             | 'Success' |
		| '\| \'ПоказыватьНастройкуПроверкаРаботыVanessaAutomationВРежимеTestClient = Ложь;\' \|'                                   | ''        |
		| '\| \'Объект.ПроверкаРаботыVanessaAutomationВРежимеTestClient = Ложь;\'             \|'                                   | ''        |
		| '\| \'ПроверкаРаботыVanessaAutomationВРежимеTestClientПриИзменении(Неопределено);\' \|'                                   | ''        |
		| '\| \'УстановитьЗаголовокПриложения("Основной сеанс");\'                            \|'                                   | ''        |
		| 'И я нажимаю на кнопку \'Выполнить произвольный код\''                                                                    | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаНастройки"'                                                                      | 'Success' |
		| 'И я перехожу к закладке с именем "СтраницаСервисОсновные"'                                                               | 'Success' |
		| 'И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"'                                                              | 'Success' |
		| 'И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"'                                             | 'Success' |
		| 'И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"'                                                  | 'Success' |
		| 'И    В открытой форме я перехожу к закладке "Запуск сценариев"'                                                          | 'Success' |
		| 'И    я нажимаю на кнопку с именем \'ПоказатьСкрытьВсеКолонки\''                                                          | 'Success' |
		| 'И    я запускаю SikuliX сервер'                                                                                          | 'Success' |



	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'


	
Сценарий: Открытие VA для записи автодоков как менеджер тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗаписьАвтодоков/ДляЗаписиАвтодоков02"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И я нажимаю на кнопку с именем 'КаталогиСкриптовSikuliXПоУмолчанию'

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                 | 'Статус'  |
		| 'ДляЗаписиАвтодоков02.feature' | ''        |
		| 'ДляЗаписиАвтодоков02'         | ''        |
		| 'ДляЗаписиАвтодоков02'         | 'Success' |





	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	
Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
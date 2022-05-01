﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширение()","ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширение","И Я жду завершения выполнения всех фоновых заданий (Расширение)","Ожидает завершения фоновых заданий на стороне клиента тестирования. Количество секунд ожидания определяется параметром ТаймаутДляАсинхронныхШагов (timeoutforasynchronoussteps). Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Ожидание завершения фоновых заданий");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийВТечениеСекундРасширение()","ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийВТечениеСекундРасширение","И Я жду завершения выполнения всех фоновых заданий в течение 100 секунд (Расширение)","Ожидает завершения фоновых заданий на стороне клиента тестирования в течение указанного числа секунд. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Ожидание завершения фоновых заданий");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСохраняюНавигационнуюСсылкуТекущегоОкнаВПеременнуюРасширение(Парам01)","ЯСохраняюНавигационнуюСсылкуТекущегоОкнаВПеременнуюРасширение","И я сохраняю навигационную ссылку текущего окна в переменную ""ИмяПеременной"" (Расширение)","Сохраняет навигационную ссылку текущего окна в переменную. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Навигационная ссылка окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаРасширение(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаРасширение","И я выполняю код встроенного языка (Расширение)" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Выполняет произвольный клиентский код на стороне клиента тестирования. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервереРасширение(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервереРасширение","И я выполняю код встроенного языка на сервере (Расширение)" + Символы.ПС + """""""bsl" + Символы.ПС + "	Сообщить(""Hello world."")" + Символы.ПС + """""""","Выполняет произвольный серверный код на стороне клиента тестирования. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширение(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширение","И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной"" (Расширение)","Вычисляет произвольное выражение (клиент) на стороне клиента тестирования. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияНаСервереВПеременнуюРасширение(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияНаСервереВПеременнуюРасширение","И Я запоминаю значение выражения на сервере 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной"" (Расширение)","Вычисляет произвольное выражение (сервер) на стороне клиента тестирования. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВывожуДанныеТекущегоОкнаРасширение()","ЯВывожуДанныеТекущегоОкнаРасширение","И я вывожу данные текущего окна (Расширение)","Выводит в макет данные текущего окна. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Данные текущего окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеТекущегоОкнаВПеременнуюРасширение(Парам01,Парам02)","ЯЗапоминаюЗначениеТекущегоОкнаВПеременнуюРасширение","И Я запоминаю значение текущего окна 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной"" (Расширение)","Вычисляет вражение в контексте текущего окна. Позволяет получить произвольные данные из формы, объекта формы. Выражение пишется в виде ""_ТекущееОкно.Объект.ПометкаУдаления"" или ""_ТекущееОкно.ЭтаФорма.ТолькоПросмотр"" или ""_CurrentWindow.Object.DeletionMark"" и тому подобное. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Данные текущего окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюВыражениеВТекущемОкнеРасширение(Парам01)","ЯВыполняюВыражениеВТекущемОкнеРасширение","И я выполняю выражение ""ВыражениеВстроенногоЯзыка"" в текущем окне (Расширение)","Позволяет установить значение текущего окна, если он доступно для записи. Также позволяет вызвать метод формы текущего окна. Выражение пишется в виде '_ТекущееОкно.Заголовок = ""Новый заголовок""' или '_CurrentWindow.Caption = ""New caption""' или '_ТекущееОкно.ОткрытьСправкуФормы()' или '_CurrentWindow.ОткрытьСправкуФормы()'. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Установка данных текущего окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"РасширениеСИменемУстановлено(Парам01)","РасширениеСИменемУстановлено","Дано расширение с именем ""ИмяРасширения"" установлено","Проверяет существование в базе расширения с данным именем","Прочее.Расширения");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстанавливаюВДаннуюБазуРасширениеИзКаталогаИсходников(Парам01,Парам02)","ЯУстанавливаюВДаннуюБазуРасширениеИзКаталогаИсходников","И Я устанавливаю в данную базу расширение ""ИмяРасширения"" из каталога исходников ""КаталогРасширения""","Загружает в базу, где запущен менеджер тестирования, расширение из исходных файлов с помощью пакетного запуска конфигуратора к этой же базе. Необходимо обеспечить наличие прав на установка расширения и запуск конфигуратора.","Прочее.Расширения");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УРасширенияЯСнимаюФлаги(Парам01,ТабПарам)","УРасширенияЯСнимаюФлаги","И у расширения ""ИмяРасширения"" я снимаю флаги","Снимает переданные в таблице флаги у указанного расширения.","Прочее.Расширения");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюОкноФункцииДляТехническогоСпециалистаРасширение()","ЯОткрываюОкноФункцииДляТехническогоСпециалистаРасширение","И я открываю окно функции для технического специалиста (расширение)","Открывает окно ""Функции для технического специалиста"". Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Функции для технического специалиста");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюОкноНастройкаНачальнойСтраницыРасширение()","ЯОткрываюОкноНастройкаНачальнойСтраницыРасширение","И я открываю окно настройка начальной страницы (расширение)","Открывает окно ""Настройка начальной страницы"". Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Настройка начальной страницы");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоВозрастаниюРасширение(Парам01,Парам02)","ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоВозрастаниюРасширение","И в таблице ""ИмяТаблицы"" текущего окна я устанавливаю сортировку по колонке ""ИмяКолонки"" по возрастанию (расширение)","Устанавливает сортировку таблицы текущего окна по возрастанию. Имя таблицы указывается как в конфигураторе. Имя колонки указывается как в конфигураторе. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Сортировка таблицы");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоУбываниюРасширение(Парам01,Парам02)","ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоУбываниюРасширение","И в таблице ""ИмяТаблицы"" текущего окна я устанавливаю сортировку по колонке ""ИмяКолонки"" по убыванию (расширение)","Устанавливает сортировку таблицы текущего окна по убыванию. Имя таблицы указывается как в конфигураторе. Имя колонки указывается как в конфигураторе. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Сортировка таблицы");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОчищаюТабличныйДокументРасширение(Парам01)","ЯОчищаюТабличныйДокументРасширение","И я очищаю табличный документ ""ИмяРеквизита"" (расширение)","Выполняет очистку табличного документа, который находися в отчете, печатной форме и так далее. Необходмо, чтобы в клиенте тестирования было подключено расширение VAExtension.","Прочее.Расширение VAExtension.Очистка табличного документа");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Функция ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОжиданиеОбновлениеТаблицы()
	
	Попытка
		ТекущееЗначениеФлага = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку("ОбновлениеТаблицыЗавершено",Истина);
	Исключение
		Если ДатаЗавершенияПроверкиЗавершенияФоновых >= ТекущаяДата() Тогда
			ПодключитьОбработчикОжидания("ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОжиданиеОбновлениеТаблицы", 0.1, Истина);
			Возврат Неопределено;
		КонецЕсли;	 
	КонецПопытки;
	
	ТекущееЗначениеФлага = Ванесса.ПривестиЗначениеФлагаКСтандарту(ТекущееЗначениеФлага);
	
	ЗначениеТаблицы = Неопределено;
	Если ТекущееЗначениеФлага = "Да" Тогда
		Попытка
			ТЧ = Ванесса.НайтиТЧПоИмени("ТаблицаФоновых");
			ЗначениеТаблицы = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
			Если ЗначениеТаблицы <> Неопределено Тогда
				Если ЗначениеТаблицы.Количество() = 0 Тогда
					Ванесса.Шаг("И я закрываю окно '*Проверка*фоновых*заданий'");
					Ванесса.ПродолжитьВыполнениеШагов();
					Возврат Неопределено;
				КонецЕсли;	 
			КонецЕсли;	 
		Исключение
		КонецПопытки;
	КонецЕсли;	 
	
	Если ДатаЗавершенияПроверкиЗавершенияФоновых < ТекущаяДата() Тогда
		//Значит время ожидания вышло. Надо вызвать ошибку.
		СтрокаСообщения = Ванесса.ПодставитьПараметрыВСтроку(
			Ванесса.Локализовать("Не получилось дождаться завершения выполнения фоновых заданий в течение <%1> секунд."),
				Формат(ИнтервалПроверкиЗавершенияФоновыхЗаданий, "ЧГ=; ЧН=0"));
				
		Если ЗначениеТаблицы = Неопределено Тогда
			Попытка
				ТЧ = Ванесса.НайтиТЧПоИмени("ТаблицаФоновых");
				ЗначениеТаблицы = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
			Исключение
			КонецПопытки;
		КонецЕсли;	 		
				
		Если ЗначениеТаблицы <> Неопределено Тогда
			СтрокаСообщения = СтрокаСообщения + Символы.ПС + Ванесса.ЗначениеТаблицыФормыВТаблицуGherkin(ЗначениеТаблицы);
		КонецЕсли;	 
		
		Ванесса.ПродолжитьВыполнениеШагов(Истина, СтрокаСообщения);
		
		Возврат Неопределено;
	КонецЕсли;	 
	
	Если ТекущееЗначениеФлага = "Да" Тогда
		//Значит надо ещё раз обновить таблицу фоновых
		Ванесса.Шаг("Дано я снимаю флаг с именем ""ОбновлениеТаблицыЗавершено""");
		Ванесса.Шаг("И я нажимаю на кнопку с именем 'ОбновитьТаблицу'");
	КонецЕсли;	 
	
	ПодключитьОбработчикОжидания("ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОжиданиеОбновлениеТаблицы", 0.1, Истина);
	
КонецФункции 

&НаКлиенте
Функция ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОбработчик()
	Ванесса.Шаг("Дано я снимаю флаг с именем ""ОбновлениеТаблицыЗавершено""");
	Ванесса.Шаг("И я нажимаю на кнопку с именем 'ОбновитьТаблицу'");
	
	ПодключитьОбработчикОжидания("ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОжиданиеОбновлениеТаблицы", 0.1, Истина);
КонецФункции 

&НаКлиенте
//И Я жду завершения выполнения всех фоновых заданий (Расширение)
//@ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширение()
Функция ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширение(КолСекунд = Неопределено) Экспорт
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ПроверкаФоновыхЗаданий");
	Ванесса.Шаг("Тогда открылась форма с именем '*.VAExtension_ПроверкаФоновыхЗаданий.*'");
	
	Если КолСекунд = Неопределено Тогда
		ИнтервалПроверкиЗавершенияФоновыхЗаданий = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(30);
	Иначе	
		ИнтервалПроверкиЗавершенияФоновыхЗаданий = КолСекунд;
	КонецЕсли;
	
	ДатаЗавершенияПроверкиЗавершенияФоновых = ТекущаяДата() + ИнтервалПроверкиЗавершенияФоновыхЗаданий;
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ПодключитьОбработчикОжидания("ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширениеОбработчик", 0.1, Истина);
КонецФункции

&НаКлиенте
//И Я жду завершения выполнения всех фоновых заданий в течение 10 секунд (Расширение)
//@ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийВТечениеСекундРасширение()
Функция ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийВТечениеСекундРасширение(КолСекунд) Экспорт
	ЯЖдуЗавершенияВыполненияВсехФоновыхЗаданийРасширение(КолСекунд);
КонецФункции

&НаКлиенте
Процедура ЗакрытьОкноМодальногоДиалога(ТекОкно)
	КнопкаЗакрыть = ТекОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"), "OK");
	Если КнопкаЗакрыть <> Неопределено Тогда
		КнопкаЗакрыть.Нажать();
	Иначе	
		ТекОкно.Закрыть();
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
//И я сохраняю навигационную ссылку текущего окна в переменную "ИмяПеременной" (Расширение)
//@ЯСохраняюНавигационнуюСсылкуТекущегоОкнаВПеременнуюРасширение(Парам01)
Функция ЯСохраняюНавигационнуюСсылкуТекущегоОкнаВПеременнуюРасширение(Знач ИмяПеременной) Экспорт
	ИмяПеременной = Ванесса.УбратьЗапрещенныеСимволыИзКлючаСтруктуры(ИмяПеременной);
	
	СтрокаОшибки = "";
	БылаОшибка = Ложь;
	КоличествоПопыток = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для СчетчикПопыток = 1 По КоличествоПопыток Цикл
		БылаОшибка = Ложь;
		СтрокаОшибки = "";
		
		Попытка
			ГлавноеОкноТестируемого = Ванесса.ПолучитьГлавноеОкноИзТестовоеПриложение();
			АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
			ТестируемыеФормы = АктивноеОкно.НайтиОбъекты(Тип("ТестируемаяФорма"));
			
			Если ТестируемыеФормы.Количество() = 1 Тогда
				ЗаголовокИскомойФормы = ТестируемыеФормы[0].ТекстЗаголовка;
			ИначеЕсли АктивноеОкно.НачальнаяСтраница Тогда
				ЗаголовокИскомойФормы = АктивноеОкно.Заголовок;
			Иначе
				ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("В окне <%1> находится <%2> форм."), АктивноеОкно.Заголовок, ТестируемыеФормы.Количество());
			КонецЕсли;
			
			ГлавноеОкноТестируемого.ВыполнитьКоманду("e1cib/command/ОбщаяКоманда.VAExtension_ПолучитьНавигационнуюСсылку");
			АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
			
			НавСсылка = "";
			
			Если АктивноеОкно.Заголовок = "1С:Предприятие" Тогда
				СообщенияСсылки = СообщенияСсылкиИзОкнаПредупреждения(АктивноеОкно);
				ЗакрытьОкноМодальногоДиалога(АктивноеОкно);
				
				ЧтениеJSON = Новый ЧтениеJSON;
				ЧтениеJSON.УстановитьСтроку(СообщенияСсылки);
				ДанныеАктивныхОкон = ПрочитатьJSON(ЧтениеJSON);
				ЧтениеJSON.Закрыть();
				
				Для Каждого ДанныеОкна Из ДанныеАктивныхОкон Цикл
					Если ЗаголовокИскомойФормы = ДанныеОкна.ЗаголовокОкна Тогда
						НавСсылка = ДанныеОкна.НавигационнаяСсылка;
						НавСсылка = СтрЗаменить(НавСсылка, "&&", "&");
						Прервать;
					КонецЕсли;
				КонецЦикла;
				
				Если НЕ ЗначениеЗаполнено(НавСсылка) Тогда
					ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("Для заголовка <%1> не найдена ссылка среди ссылок <%2>."), ЗаголовокИскомойФормы, СообщенияСсылки);
				КонецЕсли;
				
			Иначе
				ВызватьИсключение Ванесса.Локализовать("Не найдено окно модального диалога с информацией об объекте.");
			КонецЕсли; 
		Исключение
			СтрокаОшибки = ОписаниеОшибки();
			БылаОшибка = Истина;
			Если СчетчикПопыток < КоличествоПопыток Тогда
				Ванесса.sleep(1);
			КонецЕсли;	 
		КонецПопытки;
		
		Если НЕ БылаОшибка Тогда
			Прервать;
		КонецЕсли;	 
	КонецЦикла;
	
	Если БылаОшибка Тогда
		ВызватьИсключение СтрокаОшибки;
	КонецЕсли;	 
	
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, НавСсылка);
	
КонецФункции

&НаКлиенте
Функция СообщенияСсылкиИзОкнаПредупреждения(АктивноеОкно)
	ДекорацияMessage = АктивноеОкно.НайтиОбъект(,,"Message");
	Если ДекорацияMessage = Неопределено Тогда
		ОбъектыПоляФормы = АктивноеОкно.НайтиОбъекты(Тип("ТестируемоеПолеФормы"));
		Возврат ОбъектыПоляФормы[ОбъектыПоляФормы.Количество()-1].ТекстЗаголовка;
	Иначе
		Возврат ДекорацияMessage.ТекстЗаголовка;
	КонецЕсли;	 
КонецФункции	 

&НаКлиенте
Функция ЯВыполняюКодВстроенногоЯзыкаРасширениеСлужебный(ТабПарам, НаКлиенте)
	
	Текст = Ванесса.МногострочнаяСтрокаИзПараметраШага(ТабПарам);
	
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ВыполнитьПроизвольныйКод");
	Ванесса.Шаг("Тогда открылась форма с именем '*.VAExtension_ВыполнитьПроизвольныйКод.*'");
	
	РеквизитВыражениеВычислено = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ВыражениеВычислено", Истина);
	РеквизитКодДляВыполнения = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("КодДляВыполнения", Истина);
	РеквизитКодДляВыполнения.ВвестиТекст(Текст);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Если НаКлиенте Тогда
		КнопкаВыполнитьКод = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ФормаВыполнитьКод");
	Иначе	
		КнопкаВыполнитьКод = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ФормаВыполнитьКодСервер");
	КонецЕсли;
	
	КнопкаВыполнитьЗакрыть = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ЗакрытьФорму");
	
	КнопкаВыполнитьКод.Нажать();
	
	БылаОшибка = Истина;
	Ванесса.ОжиданиеОкончанияОбработки(БылаОшибка, РеквизитВыражениеВычислено);
	
	Если БылаОшибка Тогда
		СтрокаСообщения = Ванесса.Локализовать("Не получилось выполнить код на стороне клиента тестирования.");
		ВызватьИсключение СтрокаСообщения + Символы.ПС + Текст;
	КонецЕсли;	 
	
	КнопкаВыполнитьЗакрыть.Нажать();
	
КонецФункции 

&НаКлиенте
//И я выполняю код встроенного языка (Расширение)
//@ЯВыполняюКодВстроенногоЯзыкаРасширение(ТабПарам)
Функция ЯВыполняюКодВстроенногоЯзыкаРасширение(ТабПарам) Экспорт
	
	ЯВыполняюКодВстроенногоЯзыкаРасширениеСлужебный(ТабПарам, Истина);
	
КонецФункции

&НаКлиенте
//И я выполняю код встроенного языка на сервере (Расширение)
//@ЯВыполняюКодВстроенногоЯзыкаНаСервереРасширение(ТабПарам)
Функция ЯВыполняюКодВстроенногоЯзыкаНаСервереРасширение(ТабПарам) Экспорт

	ЯВыполняюКодВстроенногоЯзыкаРасширениеСлужебный(ТабПарам, Ложь);
	
КонецФункции

&НаКлиенте
Функция ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширениеСлужебный(ПараметрВыражение, ИмяПеременной, НаКлиенте)
	Текст = "ЗначениеДляВозврата = " + ПараметрВыражение;
	
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ВыполнитьПроизвольныйКод");
	Ванесса.Шаг("Тогда открылась форма с именем '*.VAExtension_ВыполнитьПроизвольныйКод.*'");
	
	РеквизитКодДляВыполнения = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("КодДляВыполнения", Истина);
	РеквизитЗначениеДляВозврата = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеДляВозврата", Истина);
	РеквизитВыражениеВычислено = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ВыражениеВычислено", Истина);
	РеквизитКодДляВыполнения.ВвестиТекст(Текст);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Если НаКлиенте Тогда
		КнопкаВыполнитьКод = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ФормаВыполнитьКод");
	Иначе	
		КнопкаВыполнитьКод = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ФормаВыполнитьКодСервер");
	КонецЕсли;
	
	КнопкаВыполнитьЗакрыть = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ЗакрытьФорму");
	
	КнопкаВыполнитьКод.Нажать();
	
	БылаОшибка = Истина;
	КоличествоПопытокПолученияОкнаИзПриложения = Ванесса.ЗначениеКоличествоПопытокВыполненияДействия();
	Для Сч = 1 По КоличествоПопытокПолученияОкнаИзПриложения Цикл
		ПредставлениеДанных = Ванесса.ПолучитьПредставлениеДанныхЭлементаФормы(РеквизитВыражениеВычислено);
		ПредставлениеДанных = Ванесса.ПривестиЗначениеФлагаКСтандарту(ПредставлениеДанных);
		Если ПредставлениеДанных <> "Да" Тогда
			Ванесса.sleep(1);
			Продолжить;
		КонецЕсли;	 
		
		ПредставлениеРезультата = Ванесса.ПолучитьПредставлениеДанныхЭлементаФормы(РеквизитЗначениеДляВозврата);
		Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,ПредставлениеРезультата);
		БылаОшибка = Ложь;
		КнопкаВыполнитьЗакрыть.Нажать();
		Прервать;
	КонецЦикла;	
	
	Если БылаОшибка Тогда
		СтрокаСообщения = Ванесса.Локализовать("Не получилось вычислить выражение на стороне клиента тестирования.");
		ВызватьИсключение СтрокаСообщения + Символы.ПС + ПараметрВыражение;
	КонецЕсли;	 
	
КонецФункции 

&НаКлиенте
//И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную "ИмяПеременной" (Расширение)
//@ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширение(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширение(Знач ПараметрВыражение, ИмяПеременной) Экспорт
	
	ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширениеСлужебный(ПараметрВыражение, ИмяПеременной, Истина);
	
КонецФункции

&НаКлиенте
//И Я запоминаю значение выражения на сервере 'ВыражениеВстроенногоЯзыка' в переменную "ИмяПеременной" (Расширение)
//@ЯЗапоминаюЗначениеВыраженияНаСервереВПеременнуюРасширение(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеВыраженияНаСервереВПеременнуюРасширение(Знач ПараметрВыражение, ИмяПеременной) Экспорт

	ЯЗапоминаюЗначениеВыраженияВПеременнуюРасширениеСлужебный(ПараметрВыражение, ИмяПеременной, Ложь);
	
КонецФункции

&НаКлиенте
Функция ВывестиМакетИзМногострочнойСтроки(Стр, ЗаголовокАктивногоОкна)
	МассивСтрок = Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(СокрЛП(Стр), Символы.ПС);
	
	ТабДок = Новый ТабличныйДокумент;
	
	Сч = 0;
	Для Каждого ТекСтр Из МассивСтрок Цикл
		Сч = Сч + 1;
		
		Поз = Найти(ТекСтр, ":");
		Ключ = Лев(ТекСтр, Поз - 1);
		Значение = Сред(ТекСтр, Поз + 1);
		
		ТабДок.Область(Сч, 1, Сч , 1).Текст = Ключ;
		ТабДок.Область(Сч, 2, Сч , 2).Текст = Значение;
	КонецЦикла;	 
	
	ТабДок.Область(1, 1, 1, 1).ШиринаКолонки = 40;
	ТабДок.Область(1, 2, 1, 2).ШиринаКолонки = 40;
	
	ТабДок.Показать(Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("Значения элементов окна <%1>."), ЗаголовокАктивногоОкна));
КонецФункции 

&НаКлиенте
//И я вывожу данные текущего окна (Расширение)
//@ЯВывожуДанныеТекущегоОкнаРасширение()
Функция ЯВывожуДанныеТекущегоОкнаРасширение() Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЗаголовокАктивногоОкна = АктивноеОкно.Заголовок;
	
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ДанныеТекущегоОкна");
	
	РеквизитВыражениеВычислено = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ВыражениеВычислено", Истина);
	РеквизитЗначениеРезультат = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеРезультат", Истина);
	РеквизитЗначениеЗаголовокОкна = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеЗаголовокОкна", Истина);
	РеквизитЗначениеЗаголовокОкна.ВвестиТекст(ЗаголовокАктивногоОкна);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	КнопкаВывестиДанные = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ВывестиДанные");
	КнопкаВывестиДанные.Нажать();
	
	БылаОшибка = Истина;
	Ванесса.ОжиданиеОкончанияОбработки(БылаОшибка, РеквизитВыражениеВычислено);
	Если БылаОшибка Тогда
		СтрокаСообщения = Ванесса.Локализовать("Не получилось вывести данные текущей формы клиента тестирования.");
		ВызватьИсключение СтрокаСообщения;
	КонецЕсли;
	
	ПредставлениеДанных = Ванесса.ПолучитьПредставлениеДанныхЭлементаФормы(РеквизитЗначениеРезультат);
	
	ВывестиМакетИзМногострочнойСтроки(ПредставлениеДанных, ЗаголовокАктивногоОкна);
	
	КнопкаВыполнитьЗакрыть = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ЗакрытьФорму");
	КнопкаВыполнитьЗакрыть.Нажать();
	
КонецФункции


&НаКлиенте
//И Я запоминаю значение текущего окна 'ВыражениеВстроенногоЯзыка' в переменную "ИмяПеременной" (Расширение)
//@ЯЗапоминаюЗначениеТекущегоОкнаВПеременнуюРасширение(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеТекущегоОкнаВПеременнуюРасширение(Знач ПараметрВыражение, ИмяПеременной) Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЗаголовокАктивногоОкна = АктивноеОкно.Заголовок;
	
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ДанныеТекущегоОкна");
	
	РеквизитВыражениеВычислено = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ВыражениеВычислено", Истина);
	РеквизитЗначениеРезультат = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеРезультат", Истина);
	РеквизитЗначениеВыражение = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеВыражение", Истина);
	РеквизитЗначениеВыражение.ВвестиТекст(ПараметрВыражение);
	РеквизитЗначениеЗаголовокОкна = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеЗаголовокОкна", Истина);
	РеквизитЗначениеЗаголовокОкна.ВвестиТекст(ЗаголовокАктивногоОкна);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	КнопкаВычислитьВыражение = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ВычислитьВыражение");
	КнопкаВычислитьВыражение.Нажать();
	
	БылаОшибка = Истина;
	Ванесса.ОжиданиеОкончанияОбработки(БылаОшибка, РеквизитВыражениеВычислено);
	Если БылаОшибка Тогда
		СтрокаСообщения = Ванесса.Локализовать("Не получилось вычислить выражение в контексте текущей формы клиента тестирования.");
		ВызватьИсключение СтрокаСообщения;
	КонецЕсли;
	
	ПредставлениеДанных = Ванесса.ПолучитьПредставлениеДанныхЭлементаФормы(РеквизитЗначениеРезультат);
	
	КнопкаВыполнитьЗакрыть = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ЗакрытьФорму");
	КнопкаВыполнитьЗакрыть.Нажать();
	
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной, ПредставлениеДанных);
КонецФункции


&НаКлиенте
//И явыполняю выражение "ВыражениеВстроенногоЯзыка" в текущем окне (Расширение)
//@ЯВыполняюВыражениеВТекущемОкнеРасширение(Парам01)
Функция ЯВыполняюВыражениеВТекущемОкнеРасширение(ПараметрВыражение) Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ЗаголовокАктивногоОкна = АктивноеОкно.Заголовок;
	
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ДанныеТекущегоОкна");
	
	РеквизитВыражениеВычислено = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ВыражениеВычислено", Истина);
	РеквизитЗначениеРезультат = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеРезультат", Истина);
	РеквизитЗначениеВыражение = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеВыражение", Истина);
	РеквизитЗначениеВыражение.ВвестиТекст(ПараметрВыражение);
	РеквизитЗначениеЗаголовокОкна = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ЗначениеЗаголовокОкна", Истина);
	РеквизитЗначениеЗаголовокОкна.ВвестиТекст(ЗаголовокАктивногоОкна);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	КнопкаВыполнитьВыражение = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ВыполнитьВыражение");
	КнопкаВыполнитьВыражение.Нажать();
	
	БылаОшибка = Истина;
	Ванесса.ОжиданиеОкончанияОбработки(БылаОшибка, РеквизитВыражениеВычислено);
	Если БылаОшибка Тогда
		СтрокаСообщения = Ванесса.Локализовать("Не получилось выполнить выражение в контексте текущей формы клиента тестирования.");
		ВызватьИсключение СтрокаСообщения;
	КонецЕсли;
	
	ПредставлениеДанных = Ванесса.ПолучитьПредставлениеДанныхЭлементаФормы(РеквизитЗначениеРезультат);
	
	КнопкаВыполнитьЗакрыть = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяКнопкаФормы"),,"ЗакрытьФорму");
	КнопкаВыполнитьЗакрыть.Нажать();
	
КонецФункции

&НаСервереБезКонтекста
Функция РасширениеСИменемУстановленоСервер(ИмяРасширения)
	
	Отбор = Новый Структура("Имя", ИмяРасширения);
	Расширения = РасширенияКонфигурации.Получить(Отбор);
	
	Если Расширения.Количество() > 0 Тогда
		Возврат Истина;
	Иначе
		Возврат Ложь;
	КонецЕсли;	 

КонецФункции

&НаКлиенте
//Дано расширение с именем "ИмяРасширения" установлено
//@РасширениеСИменемУстановлено(Парам01)
Функция РасширениеСИменемУстановлено(ИмяРасширения) Экспорт
	
	Установлено = РасширениеСИменемУстановленоСервер(ИмяРасширения);
	
	Если НЕ Установлено Тогда
		ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("Расширение с именем <%1> не установлено."), ИмяРасширения);
	КонецЕсли;	 
	
КонецФункции


&НаКлиенте
//И Я устанавливаю в данную базу расширение "VAExtension" из каталога "$КаталогИнструментов$\lib\VAExtension"
//@ЯУстанавливаюВДаннуюБазуРасширениеИзКаталогаИсходников(Парам01,Парам02)
Функция ЯУстанавливаюВДаннуюБазуРасширениеИзКаталогаИсходников(ИмяРасширения, КаталогРасширения) Экспорт
	
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(КаталогРасширения) Тогда
		ВызватьИсключение Ванесса._СтрШаблон(Ванесса.Локализовать("Каталог <%1> не найден."), КаталогРасширения);
	КонецЕсли;	 
	
	СтрокаКоманды = """%КаталогПлатформы"" DESIGNER /IBConnectionString %СтрокаСоединения /N""%Пользователь"" /LoadConfigFromFiles ""%КаталогРасширения"" -Extension %ИмяРасширения /DisableStartupDialogs /DisableStartupMessages /UpdateDBCfg ";	
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%КаталогПлатформы", КаталогПрограммы() + "1cv8");
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%СтрокаСоединения", СтрокаСоединенияИнформационнойБазы());
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%Пользователь", ИмяПользователя());
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%КаталогРасширения", КаталогРасширения);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды, "%ИмяРасширения", ИмяРасширения);
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды);
	
	РасширениеСИменемУстановлено(ИмяРасширения);
	
КонецФункции

&НаСервереБезКонтекста
Функция УРасширенияЯСнимаюФлагиСервер(ИмяРасширения, ТабПарам, Статус, ТекстОшибки)
	Отбор = Новый Структура("Имя", ИмяРасширения);
	Расширения = РасширенияКонфигурации.Получить(Отбор);
	
	Если Расширения.Количество() = 0 Тогда
		Статус = 1;
		Возврат Неопределено;
	КонецЕсли;	 
	
	Для Каждого ТекРасширение Из Расширения Цикл
		Для Каждого СтрокаТабПарам Из ТабПарам Цикл
			Если НРег(СтрокаТабПарам.Кол1) = НРег("ЗащитаОтОпасныхДействий") Тогда
				ОписаниеЗащитыОтОпасныхДействий = Вычислить("Новый ОписаниеЗащитыОтОпасныхДействий");
				ОписаниеЗащитыОтОпасныхДействий.ПредупреждатьОбОпасныхДействиях = Ложь;
				ТекРасширение.ЗащитаОтОпасныхДействий = ОписаниеЗащитыОтОпасныхДействий;
			Иначе	
				ТекРасширение[СтрокаТабПарам.Кол1] = Ложь;
			КонецЕсли;	 
		КонецЦикла;	 
		
		Попытка
			ТекРасширение.Записать();
		Исключение
			ТекстОшибки = ОписаниеОшибки();
			Статус = 2;
		КонецПопытки;
	КонецЦикла;	 
КонецФункции 

&НаКлиенте
//И у расширения "ИмяРасширения" я снимаю флаги
//@УРасширенияЯСнимаюФлаги(Парам01,ТабПарам)
Функция УРасширенияЯСнимаюФлаги(ИмяРасширения, ТабПарам) Экспорт
	
	Статус = 0;
	ТекстОшибки = "";
	УРасширенияЯСнимаюФлагиСервер(ИмяРасширения, ТабПарам, Статус, ТекстОшибки);
	
	Если Статус = 1 Тогда
		ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("Расширение с именем <%1> не найдено."), ИмяРасширения);
	ИначеЕсли Статус = 2 Тогда
		ВызватьИсключение Ванесса.ПодставитьПараметрыВСтроку(Ванесса.Локализовать("При установке флагов расширения с именем <%1> возникла ошибка <%2>."), ИмяРасширения, ТекстОшибки);
	КонецЕсли;	 
	
КонецФункции

&НаКлиенте
//И я открываю окно функции для технического специалиста (расширение)
//@ЯОткрываюОкноФункцииДляТехническогоСпециалистаРасширение()
Функция ЯОткрываюОкноФункцииДляТехническогоСпециалистаРасширение() Экспорт
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ОткрытьВсеФункции");
КонецФункции

&НаКлиенте
//И я открываю окно настройка начальной страницы (расширение)
//@ЯОткрываюОкноНастройкаНачальнойСтраницыРасширение()
Функция ЯОткрываюОкноНастройкаНачальнойСтраницыРасширение() Экспорт
	Ванесса.ОткрытьНавигационнуюСсылку("e1cib/app/Обработка.VAExtension_ОткрытьНастройкаНачальнойСтраницы");
КонецФункции


&НаКлиенте
//И в таблице "ИмяТаблицы" текущего окна я устанавливаю сортировку по колонке "ИмяКолонки" по возрастанию (расширение)
//@ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоВозрастаниюРасширение(Парам01,Парам02)
Функция ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоВозрастаниюРасширение(ИмяТаблицы, ИмяКолонки, ПоВозрастанию = Истина) Экспорт
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Текст = "
	|ТекОкно = VAExtensionКлиент.ПолучитьОкноПоЗаголовку(""%4"");
	|ТекТаблица = ТекОкно.%1;
	|
	|Сортировка = ТекТаблица.КомпоновщикНастроек.Настройки.Порядок.Элементы;
	|Сортировка.Очистить();
	
	|УсловиеСортировки = Сортировка.Добавить(Тип(""ЭлементПорядкаКомпоновкиДанных""));
	|УсловиеСортировки.Поле = Новый ПолеКомпоновкиДанных(""%2"");
	|УсловиеСортировки.ТипУпорядочивания = НаправлениеСортировкиКомпоновкиДанных.%3;
	|ТекТаблица.КомпоновщикНастроек.ЗагрузитьНастройки(ТекТаблица.КомпоновщикНастроек.Настройки);
	|";
	
	Текст = СтрЗаменить(Текст, "%1", ИмяТаблицы);
	Текст = СтрЗаменить(Текст, "%2", ИмяКолонки);
	Если ПоВозрастанию Тогда
		Текст = СтрЗаменить(Текст, "%3", "Возр");
	Иначе	
		Текст = СтрЗаменить(Текст, "%3", "Убыв");
	КонецЕсли;	 
	Текст = СтрЗаменить(Текст, "%4", СтрЗаменить(АктивноеОкно.Заголовок, """", """"""));
	
	ЯВыполняюКодВстроенногоЯзыкаРасширениеСлужебный(Текст, Истина);
	
КонецФункции

&НаКлиенте
//И в таблице "ИмяТаблицы" текущего окна я устанавливаю сортировку по колонке "ИмяКолонки" по убыванию (расширение)
//@ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоУбываниюРасширение(Парам01,Парам02)
Функция ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоУбываниюРасширение(ИмяТаблицы, ИмяКолонки) Экспорт
	
	ВТаблицеТекущегоОкнаЯУстанавливаюСортировкуПоКолонкеПоВозрастаниюРасширение(ИмяТаблицы, ИмяКолонки, Ложь);
	
КонецФункции

&НаКлиенте
//И я очищаю табличный документ "ИмяРеквизита" (расширение)
//@ЯОчищаюТабличныйДокументРасширение(Парам01)
Функция ЯОчищаюТабличныйДокументРасширение(ИмяРеквизита) Экспорт
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Текст = "
	|ТекОкно = VAExtensionКлиент.ПолучитьОкноПоЗаголовку(""%1"");
	|ТекОкно.%2 = Новый ТабличныйДокумент;
	|";
	
	Текст = СтрЗаменить(Текст, "%1", СтрЗаменить(АктивноеОкно.Заголовок, """", """"""));
	Текст = СтрЗаменить(Текст, "%2", ИмяРеквизита);
	
	ЯВыполняюКодВстроенногоЯзыкаРасширениеСлужебный(Текст, Истина);
	
КонецФункции

﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;

&НаКлиенте
Перем ФормаНастройкиРаботыСБраузером;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"НужноСброситьБраузер()","НужноСброситьБраузер","И Нужно сбросить браузер","Закрывает и заново открывает браузер (см. Сервис->Настройки клиентов тестирования->Запуск браузера)",
		"Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля(ID,ТекстПоля)","ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля","И в странице браузера для элемента ""ID"" я устанавливаю текст поля ""ТекстПоля""",
		"В странице браузера для элемента с указанным ""ID"" устанавливает заданный текст поля ввода","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СтраницаБраузераСодержитТекст(ТекстHTML)","СтраницаБраузераСодержитТекст","И страница браузера содержит текст ""ТекстHTML""","В исходном коде страницы ищет зданный HTML-текст. Если текст не найден - вызываем исключение.",
		"Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯПолучаюТекстВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯПолучаюТекстВПеременную","И в странице браузера для элемента ""ID"" я получаю текст в переменную ""ИмяПеременной""",
		"В странице браузера для элемента с указанным ""ID"" запоминаем текст в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯПолучаюСсылкуВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯПолучаюСсылкуВПеременную","И в странице браузера для элемента ""ID"" я получаю ссылку в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-ссылки с указанным ""ID"" запоминаем ссылку(href) в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯПолучаюТекстКнопкиВПеременную","И в странице браузера для элемента ""ID"" я получаю текст кнопки в переменную ""ИмяПеременной""",
		"В странице браузера для элемента ""submit"" с указанным ""ID"" запоминаем текст кнопки в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯПолучаюСписокЗначенийВПеременную","И в странице браузера для элемента ""ID"" я получаю список значений в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-выпадающего списка с указанным ""ID"" получаем список в переменную типа ""СписокЗначений""","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯДелаюПравыйКлик(Парам01)","ВСтраницеБраузераДляЭлементаЯДелаюПравыйКлик","И в странице браузера для элемента ""ID"" я делаю правый клик",
		"В странице браузера для элемента с указанным ""ID"" производим правый клик (контекстное меню)","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстВПеременную","И в странице браузера для элемента с именем ""Name"" я получаю текст в переменную ""ИмяПеременной""",
		"В странице браузера для элемента с указанным ""Name"" запоминаем текст в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСсылкуВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСсылкуВПеременную","И в странице браузера для элемента с именем ""Name"" я получаю ссылку в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-ссылки с указанным ""Name"" запоминаем ссылку(href) в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстКнопкиВПеременную","И в странице браузера для элемента с именем ""Name"" я получаю текст кнопки в переменную ""ИмяПеременной""",
		"В странице браузера для элемента ""submit"" с указанным ""Name"" запоминаем текст кнопки в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯУстанавливаюТекстПоля(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯУстанавливаюТекстПоля","И в странице браузера для элемента с именем ""Name"" я устанавливаю текст поля ""ТекстПоля""",
		"В странице браузера для элемента с указанным ""Name"" устанавливает заданный текст поля ввода","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСписокЗначенийВПеременную","И в странице браузера для элемента с именем ""Name"" я получаю список значений в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-выпадающего списка с указанным ""Name"" получаем список в переменную типа ""СписокЗначений""","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемЯВыбираюЗначениеВСпискеВыбора","И в странице браузера для элемента с именем ""Name"" я выбираю значение ""ЗначениеЭлемента"" в списке выбора",
		"В странице браузера для элемента-выпадающего списка с указанным ""Name"" устанавливаем значение из списка","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯДелаюКлик(Парам01)","ВСтраницеБраузераДляЭлементаСИменемЯДелаюКлик","И в странице браузера для элемента с именем ""Name"" я делаю клик",
		"В странице браузера для элемента с указанным ""Name"" производим клик мышью","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемЯДелаюПравыйКлик(Парам01)","ВСтраницеБраузераДляЭлементаСИменемЯДелаюПравыйКлик","И в странице браузера для элемента с именем ""Name"" я делаю правый клик",
		"В странице браузера для элемента с указанным ""Name"" производим правый клик (контекстное меню)","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстВПеременную","И в странице браузера для элемента с именем класса ""className"" я получаю текст в переменную ""ИмяПеременной""",
		"В странице браузера для элемента с указанным ""className"" запоминаем текст в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСсылкуВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСсылкуВПеременную","И в странице браузера для элемента с именем класса ""className"" я получаю ссылку в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-ссылки с указанным ""className"" запоминаем ссылку(href) в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстКнопкиВПеременную","И в странице браузера для элемента с именем класса ""className"" я получаю текст кнопки в переменную ""ИмяПеременной""",
		"В странице браузера для элемента ""submit"" с указанным ""className"" запоминаем текст кнопки в переменную","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯУстанавливаюТекстПоля(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯУстанавливаюТекстПоля","И в странице браузера для элемента с именем класса ""className"" я устанавливаю текст поля ""ТекстПоля""",
		"В странице браузера для элемента с указанным ""className"" устанавливает заданный текст поля ввода","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСписокЗначенийВПеременную","И в странице браузера для элемента с именем класса ""className"" я получаю список значений в переменную ""ИмяПеременной""",
		"В странице браузера для элемента-выпадающего списка с указанным ""className"" получаем список в переменную типа ""СписокЗначений""","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯВыбираюЗначениеВСпискеВыбора","И в странице браузера для элемента с именем класса ""className"" я выбираю значение ""ЗначениеЭлемента"" в списке выбора",
		"В странице браузера для элемента-выпадающего списка с указанным ""className"" устанавливаем значение из списка","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюКлик(Парам01)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюКлик","И в странице браузера для элемента с именем класса ""className"" я делаю клик",
		"В странице браузера для элемента с указанным ""className"" производим клик мышью","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюПравыйКлик(Парам01)","ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюПравыйКлик","И в странице браузера для элемента с именем класса ""className"" я делаю правый клик",
		"В странице браузера для элемента с указанным ""className"" производим правый клик (контекстное меню)","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрываюСсылкуВеб_браузера(Парам01)","ЯОткрываюСсылкуВеб_браузера","И я открываю ссылку веб-браузера ""$Ссылка_url$""",
		"Производит открытие ссылки в новой странице браузера","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодJavascriptВСтраницеВеб_браузера(Парам01)","ЯВыполняюКодJavascriptВСтраницеВеб_браузера","И я Выполняю код Javascript в странице веб-браузера
			|{                                                    |
			|    let node = document.getElementsByName('name')[0];|
			|    node.value = '2027';                             |
			|};		|",
		"Производит открытие ссылки в новой странице браузера","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюПрямоугольникДляВеб_браузера(ТабПарам)","ЯРисуюПрямоугольникДляВеб_браузера","И я рисую прямоугольник для веб-браузера
			|'ТочкаX'|'450'| 
			|'ТочкаY'|'340'| 
			|'Width'|'400'| 
			|'Height'|'300'| 
			|'borderColor'|'red'| 
			|'borderWidth'|'0.1em'| 
			|'Длительность'|'10000'| ",
		"Рисует элемент-рамку вокруг области в странице браузера","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля","И в странице браузера для элемента ""number_card"" я устанавливаю текст поля ""1111111111111111""",
		"В странице браузера для элемента с указанным ""ID"" устанавливает заданный текст поля ввода","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)","ВСтраницеБраузераДляЭлементаЯВыбираюЗначениеВСпискеВыбора","И в странице браузера для элемента ""month_card"" я выбираю значение ""05"" в списке выбора",
		"В странице браузера для элемента-выпадающего списка с указанным ""ID"" устанавливаем значение из списка","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераЯПровожуСкроллККоординатам(Парам01,Парам02)","ВСтраницеБраузераЯПровожуСкроллККоординатам","И в странице браузера я провожу скролл к координатам ""500"" ""1000""",
		"Производит перемотку в странице браузера к координатам: на случай, если страница объемная и имеет ползунок прокрутки","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюНадписьДляВеб_браузера(ТабПарам)","ЯРисуюНадписьДляВеб_браузера","И я рисую надпись для веб-браузера
			|'ТочкаX'|'200'| 
			|'ТочкаY'|'670'| 
			|'НадписьТекст'|'Для оплаты нажмите сюда ===>'| 
			|'color'|'red'| 
			|'borderWidth'|'0.1em'| ",
		"Рисует текст-подсказку возле области в странице браузера","Прочее.VanessaExt.Действия для браузера");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтраницеБраузераДляЭлементаЯДелаюКлик(Парам01)","ВСтраницеБраузераДляЭлементаЯДелаюКлик","И в странице браузера для элемента ""help_card_link"" я делаю клик",
		"В странице браузера для элемента с указанным ""ID"" производим клик мышью","Прочее.VanessaExt.Действия для браузера");

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
// Функция выполняется перед началом каждого сценария
Функция СброситьБраузер()
	
	Если ПустаяСтрока(Ванесса.Объект.КомандаЗапускаБраузера) Тогда
		ВызватьИсключение "Не заполнена строка запуска браузера (см. Сервис->Настройки клиентов тестирования->Запуск браузера)";
	КонецЕсли;
	
	ФормаНастройкиРаботыСБраузером = Ванесса.ПолучитьМодульНастройкиРаботыСБраузером(Новый Структура("АсинхронныйПоискСуществованияФайлов", Ложь));
	
	Если Ванесса.ПолучитьМассивPIDПроцессов(Ванесса.Объект.КомандаЗапускаБраузера).Количество() > 0 Тогда
		Ванесса.TASKKILL(Ванесса.Объект.КомандаЗапускаБраузера);
	КонецЕсли;
	
	СтрокаКоманды = Ванесса.Объект.КомандаЗапускаБраузера;
	ЗапуститьПриложение(СтрокаКоманды);
	
КонецФункции

&НаКлиенте
//И Нужно сбросить браузер
//@НужноСброситьБраузер()
Функция НужноСброситьБраузер() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	СброситьБраузер();
КонецФункции


&НаКлиенте
Функция ЭлементСтраницыБраузера(Идентификатор, Значение)
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Если ВРег(Идентификатор) = "ID" Тогда
		Element = ФормаНастройкиРаботыСБраузером.Элементы.ТекстHTML.Документ.getElementById(Значение);
	ИначеЕсли ВРег(Идентификатор) = "NAME" Тогда
		Element = ФормаНастройкиРаботыСБраузером.Элементы.ТекстHTML.Документ.getElementsByName(Значение)[0];
	ИначеЕсли ВРег(Идентификатор) = "CLASSNAME" Тогда
		Element = ФормаНастройкиРаботыСБраузером.Элементы.ТекстHTML.Документ.getElementsByClassName(Значение)[0];
	Иначе
		Возврат Неопределено
	КонецЕсли;
	Возврат Element
КонецФункции

&НаКлиенте
Функция JavascriptДляЭлементаСтраницыБраузера(Идентификатор, Значение)

	ТабПарам = Новый Структура("Идентификатор,ИмяФункции", Значение,"");
	
	ТекстШаблонаНачало = "{
	|    let node = document.%ИмяФункции%('%Идентификатор%')[0];
	|	 node.focus();";
	
	Если ВРег(Идентификатор) = "ID" Тогда
		ТабПарам.ИмяФункции = "getElementById";
	ИначеЕсли ВРег(Идентификатор) = "NAME" Тогда
		ТабПарам.ИмяФункции = "getElementsByName";
	ИначеЕсли ВРег(Идентификатор) = "CLASSNAME" Тогда
		ТабПарам.ИмяФункции = "getElementsByClassName";
	Иначе
		Возврат Неопределено
	КонецЕсли;

	ТекстJavaScript = ТекстШаблонаНачало;
	
	Для Каждого СтрокаПарам Из ТабПарам Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Ключ+"%", СтрокаПарам.Значение)
	КонецЦикла;
	
	Если ТабПарам.ИмяФункции = "getElementById" Тогда
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, ")[0];", ");");
	КонецЕсли;

	Возврат ТекстJavaScript
КонецФункции
	
&НаКлиенте
//И я открываю ссылку веб-браузера "https://www.google.ru"
//@ЯОткрываюСсылкуВеб_браузера(Парам01)
Функция ЯОткрываюСсылкуВеб_браузера(Парам01) Экспорт
	
	Если ПустаяСтрока(Ванесса.Объект.КомандаЗапускаБраузера) Тогда
		ВызватьИсключение "Не заполнена строка запуска браузера (см. Сервис->Настройки клиентов тестирования->Запуск браузера)";
	КонецЕсли;
	
	Если ФормаНастройкиРаботыСБраузером = Неопределено ИЛИ 
		 Ванесса.ПолучитьМассивPIDПроцессов(Ванесса.Объект.КомандаЗапускаБраузера).Количество() = 0 Тогда
		ФормаНастройкиРаботыСБраузером = Ванесса.ПолучитьМодульНастройкиРаботыСБраузером(Новый Структура("АсинхронныйПоискСуществованияФайлов", Ложь));
		//СброситьБраузер();
	КонецЕсли;
	
	ФормаНастройкиРаботыСБраузером.АдресВебКлиента = Парам01;
	ФормаНастройкиРаботыСБраузером.ОткрытьURL(Неопределено);
	
	Ванесса.СохранитьЗначениеВКонтекст("АдресВебСокет", ФормаНастройкиРаботыСБраузером.АдресВебСокет);
	
КонецФункции

&НаКлиенте
//И я рисую прямоугольник для веб-браузера
//@ЯРисуюПрямоугольникДляВеб_браузера(ТабПарам)
Функция ЯРисуюПрямоугольникДляВеб_браузера(ТабПарам) Экспорт
	
	ТекстШаблона = "{
	|    let node = document.createElement('div');
	|    node.style.fontSize = '100%';
	|    node.style.position = 'fixed';
	|    node.style.zIndex = 999999;
	|    node.style.left = '%ТочкаX%px';
	|    node.style.top = '%ТочкаY%px';
	|    node.style.width = '%Width%px';
	|    node.style.height = '%Height%px';
	|    node.style.borderWidth = '%borderWidth%';
	|    node.style.borderStyle = 'solid';
	|    node.style.borderColor = '%borderColor%';
	|    node.style.backgroundColor = '#11ffee00';
	|    node.style.padding = '1em';
	|    node.style.borderRadius = '1em';
	|    window.top.document.body.appendChild(node);
	|    setTimeout(() => { if (node) node.remove() }, %Длительность%);
	|};";
	
	ТекстJavaScript = ТекстШаблона;
	
	Для Каждого СтрокаПарам Из ТабПарам Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Кол1+"%", СтрокаПарам.Кол2)
	КонецЦикла;
	
	// Если значения параметров в шаге не заданы - ставим по умолчанию.
	ПараметрыУмолчания = Новый Структура("borderWidth,borderColor,Длительность","0.1em","red","10000");
	Для Каждого СтрокаПарам Из ПараметрыУмолчания Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Ключ+"%", СтрокаПарам.Значение)
	КонецЦикла;
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);

КонецФункции

&НаКлиенте
//И я Выполняю код Javascript в странице веб-браузера
//@ЯВыполняюКодJavascriptВСтраницеВеб_браузера(ТабПарам)
Функция ЯВыполняюКодJavascriptВСтраницеВеб_браузера(ТабПарам) Экспорт
	
	ТекстJavaScript = "";
	Для Каждого СтрокаПарам Из ТабПарам Цикл
		ТекстJavaScript = ТекстJavaScript + СтрокаПарам.Кол1 + Символы.ПС;
	КонецЦикла;
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);

КонецФункции

&НаКлиенте
//И я рисую надпись для веб-браузера
//@ЯРисуюНадписьДляВеб_браузера(Парам01,ТабПарам)
Функция ЯРисуюНадписьДляВеб_браузера(ТабПарам) Экспорт
	
	//Ванесса.ПосмотретьЗначение(Истина);
	ТекстШаблона = "{
	|    let node = document.createElement('div');
	|    node.innerHTML = 
	|    '%НадписьТекст%';
	|    node.style.fontSize = '100%';
	|    node.style.position = 'fixed';
	|    node.style.zIndex = 999999;
	|    node.style.left = '%ТочкаX%px';
	|    node.style.top = '%ТочкаY%px';
	|    node.style.color = 'red';
	|    node.style.backgroundColor = '#11ffee00';
	|    node.style.padding = '1em';
	|    window.top.document.body.appendChild(node);
	|    setTimeout(() => { if (node) node.remove() }, %Длительность%);
	|};";   
	ТекстJavaScript = ТекстШаблона;
	
	Для Каждого СтрокаПарам Из ТабПарам Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Кол1+"%", СтрокаПарам.Кол2)
	КонецЦикла;
	
	// Если значения параметров в шаге не заданы - ставим по умолчанию.
	ПараметрыУмолчания = Новый Структура("color,Длительность","red","10000");
	Для Каждого СтрокаПарам Из ПараметрыУмолчания Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Ключ+"%", СтрокаПарам.Значение)
	КонецЦикла;
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я устанавливаю текст поля "ТекстПоля"
//@ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля(ID,ТекстПоля)
Функция ВСтраницеБраузераДляЭлементаЯУстанавливаюТекстПоля(ID,ТекстПоля) Экспорт

	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("ID", ID);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%ТекстПоля%", ТекстПоля);
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И страница браузера содержит текст "ТекстHTML"
//@СтраницаБраузераСодержитТекст(ТекстHTML)
Функция СтраницаБраузераСодержитТекст(ТекстHTML) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);

	HTMLСтраницы = ФормаНастройкиРаботыСБраузером.Элементы.ТекстHTML.Документ.documentElement.innerHTML; //
	Если Найти(HTMLСтраницы, ТекстHTML) = 0 Тогда
		ВызватьИсключение "Текст HTML на странице не найден";
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я получаю текст в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаЯПолучаюТекстВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаЯПолучаюТекстВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("ID", Парам01);
	Если Element.nodeName = "A" Тогда//ссылка
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.innerText);
	Иначе
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
	КонецЕсли;
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я получаю ссылку в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаЯПолучаюСсылкуВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаЯПолучаюСсылкуВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("ID", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.href);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я получаю текст кнопки в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("ID", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я получаю список значений в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02) Экспорт

	Element = ЭлементСтраницыБраузера("ID", Парам01);
	ЗначениеСписок = Новый СписокЗначений;
	Для Каждого ТекЭлемент Из Element.options Цикл
		ЗначениеСписок.Добавить(ТекЭлемент.value, ТекЭлемент.text);
	КонецЦикла;
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, ЗначениеСписок);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я выбираю значение "ЗначениеЭлемента" в списке выбора
//@ВСтраницеБраузераДляЭлементаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("ID", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	
	ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%ТекстПоля%", Парам02);
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я делаю клик
//@ВСтраницеБраузераДляЭлементаЯДелаюКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаЯДелаюКлик(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("ID", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.click();
	|};";
		
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента "ID" я делаю правый клик
//@ВСтраницеБраузераДляЭлементаЯДелаюПравыйКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаЯДелаюПравыйКлик(Парам01) Экспорт
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("ID", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.contextMenu();
	|};";
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я получаю текст в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("name", Парам01);
	Если Element.nodeName = "A" Тогда//ссылка
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.innerText);
	Иначе
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
	КонецЕсли;
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я получаю ссылку в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСсылкуВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСсылкуВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("name", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.href);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я получаю текст кнопки в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("name", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я устанавливаю текст поля "ТекстПоля"
//@ВСтраницеБраузераДляЭлементаСИменемЯУстанавливаюТекстПоля(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯУстанавливаюТекстПоля(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("name", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%ТекстПоля%", Парам02);
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я получаю список значений в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	Element = ЭлементСтраницыБраузера("name", Парам01);
	ЗначениеСписок = Новый СписокЗначений;
	Для Каждого ТекЭлемент Из Element.options Цикл
		ЗначениеСписок.Добавить(ТекЭлемент.value, ТекЭлемент.text);
	КонецЦикла;
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, ЗначениеСписок);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я выбираю значение "ЗначениеЭлемента" в списке выбора
//@ВСтраницеБраузераДляЭлементаСИменемЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("name", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	
	ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%ТекстПоля%", Парам02);
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я делаю клик
//@ВСтраницеБраузераДляЭлементаСИменемЯДелаюКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаСИменемЯДелаюКлик(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("name", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.click();
	|};";
		
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем "Name" я делаю правый клик
//@ВСтраницеБраузераДляЭлементаСИменемЯДелаюПравыйКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаСИменемЯДелаюПравыйКлик(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("name", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.contextMenu();
	|};";
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я получаю текст в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("classname", Парам01);
	Если Element.nodeName = "A" Тогда//ссылка
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.innerText);
	Иначе
		Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
	КонецЕсли;
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я получаю ссылку в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСсылкуВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСсылкуВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("classname", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.href);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я получаю текст кнопки в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюТекстКнопкиВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Element = ЭлементСтраницыБраузера("classname", Парам01);
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, Element.value);
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я устанавливаю текст поля "ТекстПоля"
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯУстанавливаюТекстПоля(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯУстанавливаюТекстПоля(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("classname", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я получаю список значений в переменную "ИмяПеременной"
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯПолучаюСписокЗначенийВПеременную(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	Element = ЭлементСтраницыБраузера("classname", Парам01);
	ЗначениеСписок = Новый СписокЗначений;
	Для Каждого ТекЭлемент Из Element.options Цикл
		ЗначениеСписок.Добавить(ТекЭлемент.value, ТекЭлемент.text);
	КонецЦикла;
	Ванесса.СохранитьЗначениеВКонтекст(Парам02, ЗначениеСписок);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я выбираю значение "ЗначениеЭлемента" в списке выбора
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯВыбираюЗначениеВСпискеВыбора(Парам01,Парам02) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("classname", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.value = '%ТекстПоля%';
	|};";
	
	ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%ТекстПоля%", Парам02);
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я делаю клик
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюКлик(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("classname", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.click();
	|};";
		
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера для элемента с именем класса "className" я делаю правый клик
//@ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюПравыйКлик(Парам01)
Функция ВСтраницеБраузераДляЭлементаСИменемКлассаЯДелаюПравыйКлик(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	ТекстШаблонаНачало = JavascriptДляЭлементаСтраницыБраузера("classname", Парам01);
	ТекстJavaScript = ТекстШаблонаНачало + "
	|    node.contextMenu();
	|};";
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

&НаКлиенте
//И в странице браузера я провожу скролл к координатам "500" "1000"
//@ВСтраницеБраузераЯПровожуСкроллККоординатам(Парам01,Парам02)
Функция ВСтраницеБраузераЯПровожуСкроллККоординатам(Парам01,Парам02) Экспорт
	
	ТекстШаблона = "{
	|	 window.scrollTo(%ТочкаX%, %ТочкаY%);
	|};";
	
	ТекстJavaScript = ТекстШаблона;
	
	ТабПарам = Новый Структура("ТочкаX,ТочкаY", Парам01,Парам02);
	Для Каждого СтрокаПарам Из ТабПарам Цикл
		ТекстJavaScript = СтрЗаменить(ТекстJavaScript, "%"+СтрокаПарам.Ключ+"%", СтрокаПарам.Значение)
	КонецЦикла;
	
	ФормаНастройкиРаботыСБраузером.КомандаШага	   = Ванесса.ДанныеШагаСценария().Имя;
	ФормаНастройкиРаботыСБраузером.ТекстJavaScript = ТекстJavaScript;
	ФормаНастройкиРаботыСБраузером.ВыполнитьJavaSctipt(Неопределено);
	
КонецФункции

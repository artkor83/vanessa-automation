﻿
&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ывав = 1;
КонецПроцедуры

&НаСервереБезКонтекста
Функция РазложитьСтрокуВМассивПодстрок(Знач Строка, Знач Разделитель = ",", Знач ПропускатьПустыеСтроки = Неопределено) Экспорт
	
	Результат = Новый Массив;
	
	// для обеспечения обратной совместимости
	Если ПропускатьПустыеСтроки = Неопределено Тогда
		ПропускатьПустыеСтроки = ?(Разделитель = " ", Истина, Ложь);
		Если ПустаяСтрока(Строка) Тогда 
			Если Разделитель = " " Тогда
				Результат.Добавить("");
			КонецЕсли;
			Возврат Результат;
		КонецЕсли;
	КонецЕсли;
		
	Позиция = Найти(Строка, Разделитель);
	Пока Позиция > 0 Цикл
		Подстрока = Лев(Строка, Позиция - 1);
		Если Не ПропускатьПустыеСтроки Или Не ПустаяСтрока(Подстрока) Тогда
			Результат.Добавить(Подстрока);
		КонецЕсли;
		Строка = Сред(Строка, Позиция + СтрДлина(Разделитель));
		Позиция = Найти(Строка, Разделитель);
	КонецЦикла;
	
	Если Не ПропускатьПустыеСтроки Или Не ПустаяСтрока(Строка) Тогда
		Результат.Добавить(Строка);
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции 

&НаСервереБезКонтекста
Процедура ДобавитьТипыШагов(Дерево,Тип)
	НайденныеСтрокиДерева = Дерево.Строки.НайтиСтроки(Новый Структура("ПолныйТипШага",Тип),Истина);
	Если НайденныеСтрокиДерева.Количество() = 0 Тогда
		ТекСтроки = Дерево.Строки;
		МассивТип = РазложитьСтрокуВМассивПодстрок(Тип);
		ПолныйТипШага = "";
		Для Каждого ПодТип Из МассивТип Цикл
			Если ПолныйТипШага = "" Тогда
				ПолныйТипШага = ПодТип;
			Иначе
				ПолныйТипШага = ПолныйТипШага + "." + ПодТип;
			КонецЕсли;	 
			
			НайденныеСтрокиДерева = ТекСтроки.НайтиСтроки(Новый Структура("ТипШага",ПодТип),Ложь);
			Если НайденныеСтрокиДерева.Количество() = 0 Тогда
				ТекСтрока               = ТекСтроки.Добавить();
				ТекСтрока.ТипШага       = ПодТип;
				ТекСтрока.ПолныйТипШага = ПолныйТипШага;
				
				ТекСтроки = ТекСтрока.Строки;
			КонецЕсли;	 
		КонецЦикла;	
	КонецЕсли;	 
КонецПроцедуры

&НаСервереБезКонтекста
Процедура ДобавитьШаги(Дерево,Тип,ПредставлениеТеста,ОписаниеШага,ИмяФайла)
	НайденныеСтрокиДерева = Дерево.Строки.НайтиСтроки(Новый Структура("ПолныйТипШага",Тип),Истина);
	Если НайденныеСтрокиДерева.Количество() = 0 Тогда
		ВызватьИсключение("Не найден тип шага <" + Тип + ">");
	КонецЕсли;
	
	СтрокаДерева = НайденныеСтрокиДерева[0];	
	СтрокаШага   = СтрокаДерева.Строки.Добавить();
	СтрокаШага.ПредставлениеТеста = ПредставлениеТеста;
	СтрокаШага.ОписаниеШага       = ОписаниеШага;
	СтрокаШага.ИмяФайла           = ИмяФайла;
	
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Дерево = РеквизитФормыВЗначение("ДеревоШагов");
	
	Если Ложь Тогда
		Дерево = Новый ДеревоЗначений;
	КонецЕсли;	 
	
	ТаблицаИзвестныхStepDefinition = Параметры.ТаблицаИзвестныхStepDefinition;
	Для Каждого СтрТаблицаИзвестныхStepDefinition Из ТаблицаИзвестныхStepDefinition Цикл
		Тип = СокрЛП(СтрТаблицаИзвестныхStepDefinition.ТипШага);
		Если Тип = "" Тогда
			Продолжить;
		КонецЕсли;	 
		
		ДобавитьТипыШагов(Дерево,Тип); //группы
		
		Данные = СтрТаблицаИзвестныхStepDefinition;
		
		ДобавитьШаги(Дерево,Тип,Данные.ПредставлениеТеста,Данные.ОписаниеШага,Данные.ИмяФайла);
		
		
		
		
	КонецЦикла;	
	
	ЗначениеВРеквизитФормы(Дерево,"ДеревоШагов");	
	
КонецПроцедуры

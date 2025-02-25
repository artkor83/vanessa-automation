﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild


Функциональность: БраузерАвтодок
 
Контекст:	
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: БраузерАвтодок

	#[autodoc.ignorestep]
	* Проверка поиска переключателей
		И я активизирую окно текущего клиента тестирования
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Основная' 'Проверка выбор переключателя'
		Тогда открылось окно 'Проверка выбора переключателя'
		И я меняю значение переключателя с именем 'ПоВсемРаспоряжениям2' на 'по выделенным распоряжениям'
		И я меняю значение переключателя с именем 'НастройкаФормированияПоПомещениям' на 'по всем помещениям'
		И я меняю значение переключателя с именем 'НастройкаФормированияПоПомещениям1' на 'по одному помещению'
		И я нажимаю на кнопку с именем 'ОК'

	#[autodoc.ignorestep]
	* Проверка поиска подсистем, у которых есть перенос строки в названии
		И В командном интерфейсе я выбираю 'Подсистема с очень длинным наименованием' 'Справочник1'
		И пауза 1
		И Я закрыл все окна клиентского приложения

	*Открытие формы элемента
			И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
			Тогда открылось окно 'Справочник1'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Справочник1 (создание)'
	
	*Работа с кнопками в командной панели
			И я нажимаю на кнопку с именем 'ФормаКомандаВГруппеКомаднойПанели1'
			И я нажимаю на кнопку с именем 'ФормаКомандаВГруппеКомаднойПанели2'
			И я нажимаю на кнопку с именем 'ФормаКомандаВГруппеКомаднойПанели3'
			И пауза 1
			И я очищаю окно сообщений пользователю
			
	*Работа с полями
			И в поле с именем 'Наименование' я ввожу текст '111'
			И из выпадающего списка с именем "Реквизит1" я выбираю по строке 'ЗначениеПеречисления1'
			И я активизирую поле с именем "РеквизитЧисло"
			И в поле с именем 'РеквизитЧисло' я ввожу текст '123,45'
			И в поле с именем "РеквизитЧисло" я ввожу текст "12 34,00"
			И в поле с именем 'РеквизитСтрока' я ввожу текст 'ТестСтрока'
			И в поле с именем 'РеквизитДата' я ввожу текст '08.04.1981'
			И я нажимаю кнопку очистить у поля с именем "Реквизит1"
			И в поле с именем 'Наименование' я ввожу текст '222'
			И из выпадающего списка с именем "Реквизит1" я выбираю точное значение 'ЗначениеПеречисления1'
			И из выпадающего списка с именем "Реквизит1" я выбираю точное значение 'ЗначениеПеречисления2'
			
			И я нажимаю кнопку выбора у поля с именем "Реквизит2"
			Тогда открылось окно 'Справочник2'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'      |
				| 'ТестовыйЭлемент20' |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'


			И я устанавливаю флаг с именем 'РеквизитБулево'


			Тогда открылось окно 'Справочник1 (соз*'
			И я нажимаю кнопку выбора у поля с именем "Реквизит4"
			Тогда открылось окно 'Справочник2'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'      |
				| 'ТестовыйЭлемент21' |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Справочник1 (соз*'
			И я нажимаю кнопку очистить у поля с именем "Реквизит4"


			
			
			И я меняю значение переключателя с именем 'РеквизитПереключатель' на 'Первое значение'
			И я меняю значение переключателя с именем 'РеквизитПереключатель' на 'Второе значение'
			И я изменяю флаг с именем 'РеквизитЧисло1'
			
			И В текущем окне я нажимаю кнопку командного интерфейса 'Общая команда для справочника1'
			И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	
	*Работа с таблицами
			И я перехожу к закладке с именем "СтраницаТЧ"
			И я фиксирую группу с именем "СтраницаТЧ"
			И в таблице "ТабличнаяЧасть1" я нажимаю на кнопку с именем 'ТабличнаяЧасть1Добавить'
			И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитЧисло' я ввожу текст '111,00'
			И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСтрока"
			И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитСтрока' я ввожу текст 'СтрокаТЧ'
			И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитДата"
			И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1РеквизитДата' я ввожу текст '08.04.1981'
			И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитСправочник"
			
			И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1РеквизитСправочник"
			Тогда открылось окно 'Справочник2'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'      |
				| 'ТестовыйЭлемент21' |
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Справочник1 (соз*'
			
			И В таблице "ТабличнаяЧасть1" я нажимаю кнопку очистить у поля с именем "ТабличнаяЧасть1РеквизитСправочник"
			
			И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1РеквизитЧислоПеречисление" я выбираю точное значение 'ЗначениеПеречисления1'
			И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1РеквизитЧислоПеречисление" я выбираю точное значение 'ЗначениеПеречисления2'
			
			И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки
			И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1РеквизитБулево"
			И в таблице "ТабличнаяЧасть1" я изменяю флаг с именем 'ТабличнаяЧасть1РеквизитБулево'
			И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки

	*Создание нового элемента
			И я перехожу к закладке с именем "Группа1"
			И я фиксирую группу с именем "Группа1"
			И я нажимаю на кнопку создать поля с именем "Реквизит4"
			Тогда открылось окно 'Справочник2 (создание)'
			И в поле с именем 'Наименование' я ввожу текст '111'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Справочник2 (создание) *' в течение 20 секунд

	*Работа с группами
			И я перехожу к закладке с именем "Группа4"
			И я фиксирую группу с именем "Группа4"
			И я сворачиваю группу с именем "СворачиваемаяГруппа"
			
			И я нажимаю кнопку выбора у поля с именем "СоставнойРеквизит"
			Тогда открылось окно 'Выбор типа данных'
			И в таблице "" я перехожу к строке:
				| ''            |
				| 'Справочник3' |
			И Пауза 1
			И я нажимаю на кнопку 'ОК'
			Тогда открылось окно 'Справочник3'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			
			И я фиксирую группу с именем "Группа4"
			И я разворачиваю группу с именем "СворачиваемаяГруппа"
			
			И я нажимаю на гиперссылку с именем "Наименование2"
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку 'OK'
			Тогда открылось окно 'Справочник1 (*'
			И я фиксирую группу с именем "Группа4"
			И у поля с именем "НадписьФорматированнаяСтрока" я нажимаю гиперссылку 'Ссылка1'
			И у поля с именем "НадписьФорматированнаяСтрока" я нажимаю гиперссылку 'Ссылка2'
			
			И пауза 1
			И я очищаю окно сообщений пользователю
			
	*Работа с кнопками формы		
			И я перехожу к закладке с именем "Группа2ПроверкаКнопок"
			И я фиксирую группу с именем "Группа2ПроверкаКнопок"
			
			И я меняю значение переключателя с именем 'Переключатель' на 'Первое значение'
			И я меняю значение переключателя с именем 'Переключатель' на 'Второе значение'
			И я меняю значение переключателя с именем 'Переключатель' на 'Третье значение'

			И у поля с именем "НадписьСсылки" я нажимаю гиперссылку 'Первая ссылка'
			Тогда появилось предупреждение, содержащее текст "ТекстОдин"
			
			И я нажимаю на кнопку 'OK'

			И у поля с именем "НадписьСсылки" я нажимаю гиперссылку 'Вторая ссылка'
			Тогда появилось предупреждение, содержащее текст "ТекстДва"
			И я нажимаю на кнопку 'OK'
			
			И я нажимаю на гиперссылку с именем "ГиперссылкаТолькоПросмотр2"
			И я нажимаю на кнопку с именем 'КнопкаГиперссылка'
			И я нажимаю на кнопку с именем 'ЗаполнитьРекСтрока1'
			И я нажимаю на кнопку с именем 'ВывестиПредупреждение'
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку 'OK'

	*Кнопка ещё
			И я нажимаю на кнопку с именем 'ФормаПеречитать'
	
	*Запись элемента справочника
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд

	* Нажатие на кнопку режима просмотра списка
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
		Тогда открылось окно 'Справочник1'
		И я нажимаю на кнопку с именем 'ФормаСписок'

﻿# language: ru



Функционал: Интерактивная справка. Как устроены шаги сценариев? Ключевые слова шагов.

Сценарий: Как устроены шаги сценариев? Ключевые слова шагов.

	* Привет! В этом уроке я расскажу тебе про то, как устроены шаги сценариев. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* И загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Глава 01\Пример\ПримерПараметрыШагов.feature"

	* В Vanessa Automation в шагах могут быть параметры трех типов. Это Строка, Число или Дата.
	* Чаще всего используются строковые параметры.
	* Реже используются параметры типа Число.
	* А параметры с датой используются очень редко.

	* Когда в шаг передается параметр типа Строка, надо значение параметра заключить в кавычки
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '"Hello world!"' "Строка в кавычках"
	* Или значение параметра надо заключить в ап^острофы
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '\'Hello world!\'' "Строка в апострофах"
	* В общем случае лучше использовать символ ап^острофа, т.к. у него выше приоритет.

	* Чтобы передать в шаг числовой параметр нужно просто в шаге написать нужное число.

	* Например так.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '0' "В параметр передаётся число"
		И Пауза 4
	* Или так.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '10' "В параметр передаётся число"
		И Пауза 4
		
		
	* Чтобы передать в шаг параметр типа Дата, нужно просто написать значение даты в одном из двух возможных форматов.	
	* Например так.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '08.04.81' "В параметр передаётся дата"
		И Пауза 4
	* Или так.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения '08.04.1981' "В параметр передаётся число"
		И Пауза 4

	* На этом всё, переходи к следующему уроку интерактивной справки.


#Область ОписаниеПеременных

#КонецОбласти

#Область ОбработчикиСобытийФормы

// Код процедур и функций



#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы //<ИмяТаблицыФормы>

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиКомандФормы


&НаКлиенте
Процедура ОтладитьСоединениеСТелеграм(Команда)
	ОтладитьСоединениеСТелеграмНаСервере();
КонецПроцедуры


#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ОтладитьСоединениеСТелеграмНаСервере()
	ВКМ_Телеграм.ОтправитьСообщение();
КонецПроцедуры

#КонецОбласти

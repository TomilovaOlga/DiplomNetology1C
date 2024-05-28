#Область ОписаниеПеременных

#КонецОбласти

#Область ОбработчикиСобытийФормы

// Код процедур и функций



#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыОтпускаСотрудников
&НаКлиенте
Процедура ОтпускаСотрудниковДатаНачалаПриИзменении(Элемент)
	ТекСтр = Элементы.ОтпускаСотрудников.ТекущиеДанные;
	Если ЗначениеЗаполнено(ТекСтр.ДатаОкончания) Тогда
		ТекСтр.КоличествоДней = (КонецДня(ТекСтр.ДатаОкончания) - НачалоДня(ТекСтр.ДатаНачала)) /60 /60 /24;
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Процедура ОтпускаСотрудниковДатаОкончанияПриИзменении(Элемент)
	ТекСтр = Элементы.ОтпускаСотрудников.ТекущиеДанные;
	Если ЗначениеЗаполнено(ТекСтр.ДатаНачала) Тогда
		ТекСтр.КоличествоДней = (КонецДня(ТекСтр.ДатаОкончания) - НачалоДня(ТекСтр.ДатаНачала)) /60 /60 /24;
	КонецЕсли;
КонецПроцедуры

	
#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура АнализГрафика(Команда)
	
	СтруктураПараметров = Новый Структура;
	СтруктураПараметров.Вставить("Адрес", ПоместитьДанныеВоВременноеХранилище());
	
	ОткрытьФорму("Документ.ВКМ_ГрафикОтпусков.Форма.АнализГрафика",СтруктураПараметров,,УникальныйИдентификатор);

//	АдресГрафикаВХранилище = ПоместитьДанныеВоВременноеХранилище();
//	СтруктураПараметров = Новый Структура("АдресГрафикаВДокументе", АдресГрафикаВХранилище);
//	ФормаДГанта = ОткрытьФорму("Документ.ВКМ_ГрафикОтпусков.Форма.АнализГрафика", СтруктураПараметров, ЭтотОбъект);
//	
КонецПроцедуры



#КонецОбласти

#Область СлужебныеПроцедурыИФункции
&НаСервере
Функция ПоместитьДанныеВоВременноеХранилище()
	Адрес = ПоместитьВоВременноеХранилище(Объект.ОтпускаСотрудников.Выгрузить(), УникальныйИдентификатор);
	Возврат Адрес;
КонецФункции
#КонецОбласти

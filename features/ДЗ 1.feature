﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
Дано Я открыл сеанс TestClient от имени "Администратор" с паролем "" или подключаю уже существующий
И Пауза 2
#Могут вылезать окна напоминаний, новостей, интернет-поддержки
И я закрыл все окна клиентского приложения

Сценарий: <Документ "Заказы", первое ДЗ>
#Проверка суммы в документе "Заказы"
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И в таблице "Список" я перехожу к последней строке
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ * от *'
И в таблице "Товары" я перехожу к первой строке
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '200'
И я перехожу к следующему реквизиту
И в таблице 'Товары' поле 'Сумма' имеет значение '8 000,00'

#Отрицательный тест на добавление количества услуг в документ "Заказ"
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000038' | 'Ремонт'       |
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Заказ * от * *'
И я перехожу к следующему реквизиту
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
И я закрываю все окна клиентского приложения




